-----------------------------------------------------------------
-----------------------------------------------------------------
-- AIHeroSupport Script by T. Simpson
-- Version 1.2
-- Screen Names: Archer01, Theodranis
-- E-mail: archer01_extra@hotmail.com
-- Sept 24, 2006
-- Copyright (c) 2006 T. Simpson.

-- About this script: This was my attempt to correct something
-- that I thought was fundementaly "broken" with StarWars BattleFront 2,
-- and that would be the AI never using the heroes.

-- Please note: Several times along the way I found out I couldn't do 
-- something I needed to, or a function didn't return anything when it "should" 
-- have (all the other functions similar to it do) so I had to find a work-around 
-- solution, the result is a somewhat messy script.

-- Usage:
-- During ScriptPostLoad():
-- Create Object (and override variables)
-- Set Hero Classes using the special function (be sure to remove the original SetHeroClass() commands from your script)
-- Set spawn CPs
-- Call Start()

-- NOTE: For ADVANCED scripters only:
-- This script assumes that the ATT team is always 1 and DEF is always 2
-- This can be changed however by overriding the teamATT and teamDEF variables when :New() is called
-- But because the game's scripts also assume ATT == 1 and DEF == 2 it is suggested that this feature be left alone 


-- Legal Stuff:
-- You are welcome to use this script in your custom made mods and maps so long as they are not being rented or sold.
-- If you use this script, please credit me in the readme of the project you used it in.
-- Do not claim this script as your own. It may not be much, but I did spend some time writing it after all.
-- Do not edit this script.
-- If you need to override any of the variables, please do so from your own script. Do not edit this one.
-- I am not responsible for any damages that might be incurred through the use of this script.
-- THIS SCRIPT IS NOT MADE, DISTRIBUTED, OR SUPPORTED BY LUCASARTS, A DIVISION OF LUCASFILM ENTERTAINMENT COMPANY LTD.
-----------------------------------------------------------------
-----------------------------------------------------------------

AIHeroSupport = nil --Force garbage collection (just in case)

AIHeroSupport = 
	{
		-- Basic team defaults --
		teamATT = 1,
		teamDEF = 2,
		--------------------
		
		-- Scripters can override these variables from their script --
		AIATTHeroHealth = nil,
		AIDEFHeroHealth = nil,
		
		disableInNetGame = false,
		
		initSpawnTime = 10,
		minSpawnTime = 25,
		minAfterHuman = 25,
		
		cycleTime = 10,
		netCycleTime = 20,
		
		gameMode = nil,
		spawnHero = true,
		
		botImmuneHeroes = false,
		botDamageThreshold = 0.3,
		
		enforceSingleHero = false, --Does a lot more "loop" work, but ensures that only one hero is present
		--------------------
		
		-- These variables should NOT be overwritten --
		isConquest = false,
		infiniteReforceBound = 2000000000, --Bounding number used to identify infinite reinforcements
		AIHeroCycleTimer = nil,
		cpList = {},
		heroClassIndexList = {},
		heroEntityList = {},
		heroClassNameList = {},
		botCount = nil,
		cpAdded = false,
		hasStarted = false,
		shouldHeroSpawnTeam = {},
		HeroSpawnTimer = {},
		safetySpawnTime = 2,
		recentAIHero = {},
		--------------------
	}

-- Version ID Number (for version detection) --
__AIHeroSupport_LUA__ = 3

-- Object Creation Function --
function AIHeroSupport:New(o)
	o = o or {}
	setmetatable(o,self)
	self.__index = self
	return o
end

--- SET HERO CLASS AND RECORD CLASS INDEX FOR LATER ---
function AIHeroSupport:SetHeroClass(teamPtr,className)

	if self.hasStarted then
		self:PrintError("Error!: SetHeroClass cannot be used if the hero script has already started")
		return false
	end

	SetHeroClass(teamPtr, className)
	local heroIndex = (GetTeamClassCount(teamPtr) - 1)
	self.heroClassIndexList[teamPtr] = heroIndex
	
	self.heroClassNameList[teamPtr] = className
	
	return heroIndex
end

--- Error message for user debug ---
function AIHeroSupport:PrintError(msg)
	print(" ")
	print("_______!!!AIHeroSupport ->", msg)
end
	
--- ADD SPAWN FUNCTION ---
function AIHeroSupport:AddSpawnCP(cpName,pathName)
	local tempCPPtr = GetObjectPtr(cpName)
	local tempPathPtr = GetPathPoint(pathName, 0)
	
	--print("!!!!!!!!!!!Hero: CPVal returned >", tempCPPtr," PathPointReturned >",tempPathPtr)
	
	if not tempCPPtr then
		self:PrintError("Warning!: Invalid CP > " .. cpName)
	elseif not tempPathPtr then
		self:PrintError("Warning!: Invalid path > " .. pathName)
	else
		self.cpList[cpName] = pathName
		self.cpAdded = true
	end
end

-- Allows enabling and disabling of AI hero spawn --
function AIHeroSupport:EnableHeroes(inVal)
	self.spawnHero = inVal
end

function AIHeroSupport:EnableHeroTeam(teamPtr,inVal)
	if teamPtr then
		self.shouldHeroSpawnTeam[teamPtr] = inVal
	end
end

--- Sets the bot count ---
function AIHeroSupport:SetBotCount(amount)
	local sizeATT = GetUnitCount(self.teamATT)
	local sizeDEF = GetUnitCount(self.teamDEF)
	
	if sizeATT < amount then
		self:PrintError("Warning!: Bot count larger than ATT unit count")
	end
	
	if sizeDEF < amount then
		self:PrintError("Warning!: Bot count larger than DEF unit count")
	end
	
	if amount then
		if amount >= 1 then
			ScriptCB_SetNumBots(amount - 1)
			self.botCount = amount
		elseif amount == 0 then
			ScriptCB_SetNumBots(0)
			self.botCount = 0
		else
			self:PrintError("Error!: Invalid bot count setting")
		end
	end
end
	
---- MAIN START FUNCTION ----
function AIHeroSupport:Start()
	
	--Doesn't run a second time
	if self.hasStarted then return end

	if ScriptCB_InNetGame() then
		if self.disableInNetGame then return end
		self.cycleTime = self.netCycleTime
	end
	
	--Init special vars here
	self.shouldHeroSpawnTeam[self.teamATT] = true
	self.shouldHeroSpawnTeam[self.teamDEF] = true

	------ Local functions (just following the convention of the game developers ------
	local getValidSpawnPath = function(teamPtr)
		local pathList = {}
		local cpCount = 0
		--local pathPtr = nil
		
		for cp,path in pairs(self.cpList) do
			--print("!!!!!!!!!!!Hero: Spawn test   CP", cp,"  Path", path)
			if IsObjectAlive(cp) then
				--print("!!!!!!!!!!!Hero: Spawn test   CP", cp,"  Path", path, " CPTEAM", GetObjectTeam(cp))
				if GetObjectTeam(cp) == teamPtr then
					--print("!!!!!!!!!!!Hero: Path gotten >>", path)
					cpCount = cpCount + 1
					pathList[cpCount] = path
				end
			end
		end
		
		--print("!!!!!!!!!!!Hero: Number of valid paths >", cpCount,"TEAM >", teamPtr)
		
		if cpCount == 1 then
			--Just get the first entry, skips randomizer
			local path = pathList[1]
			--print("!!!!!!!!!!!Hero: Single path gotten >>", path, "TEAM >", teamPtr)
			return path
		elseif cpCount >= 2 then
			local cpIndex = math.random(1,cpCount)
			local path = pathList[cpIndex]
			--print("!!!!!!!!!!!Hero: Random path gotten >>", path, "TEAM >", teamPtr)
			return path
		end
		
		--print("!!!!!!!!!!!Hero: No valid path found TEAM >", teamPtr)
		return false
	end
	
	local removeAllBotHeroes = function(teamPtr)
		local heroIndex = self.heroClassIndexList[teamPtr]
		if heroIndex then
			local teamSize = GetTeamSize(teamPtr)
			for i = 0, (teamSize-1) do
				local characterIndex = GetTeamMember(teamPtr, i)
				if characterIndex then
					local charClass = GetCharacterClass(characterIndex)
					if charClass then
						if charClass == heroIndex then
							if not IsCharacterHuman(characterIndex) then
								local characterUnit = GetCharacterUnit(characterIndex)
								if characterUnit then
									KillObject(characterUnit)
								end
							end
						end
					end
				end
			end
		end
	end
	
	local spawnChar = function(teamPtr, characterIndex, charClass)
		if not characterIndex then return false end
		local spawnPathName = getValidSpawnPath(teamPtr)
		if not spawnPathName then return false end --Error check
		local spawnNode = GetPathPoint(spawnPathName, 0)
		--if not spawnNode then return end
		--if spawnPathName then
		if spawnNode then
			--print("!!!!!!!!!!!Hero: TEST 2")
			local charUnit = GetCharacterUnit(characterIndex)
			--print("!!!!!!!!!!!Hero: Activate unit >>", characterIndex)
			if not charUnit then
				if charClass then
					SelectCharacterClass(characterIndex, charClass)
				end
				SpawnCharacter(characterIndex, spawnNode)
				local charUnit = GetCharacterUnit(characterIndex)
				if charUnit then
					if teamPtr == self.teamATT then
						if self.AIATTHeroHealth then
							SetProperty(charUnit,"MaxHealth", self.AIATTHeroHealth)
							SetProperty(charUnit,"CurHealth", self.AIATTHeroHealth)
							--print("!!!!!!!!!!!Hero:  Attack hero health set")
						end
					elseif teamPtr == self.teamDEF then
						if self.AIDEFHeroHealth then
							SetProperty(charUnit,"MaxHealth", self.AIDEFHeroHealth)
							SetProperty(charUnit,"CurHealth", self.AIDEFHeroHealth)
							--print("!!!!!!!!!!!Hero: Defend hero health set")
						end
					end
					
					if self.botImmuneHeroes and self.botDamageThreshold then
						SetAIDamageThreshold(charUnit, self.botDamageThreshold)
					end
					
					--print("!!!!!!!!!!!Hero: Special spawned ", characterIndex, " at node", spawnNode, "Class", GetCharacterClass(characterIndex), " VERIFY >", charUnit)
					return true
				end
			end
		end			
		return false
	end
	
	local getUnspawnedBot = function(teamPtr)
		local teamSize = GetTeamSize(teamPtr)
		
		if self.botCount then
			if self.botCount <= 0 then
				return false
			end
		end
		
		for i = 0, (teamSize-1) do
			local characterIndex = GetTeamMember(teamPtr, i)
			--print("!!!!!!!!!!!Hero: Checking index >>", characterIndex)
			if characterIndex then
				if not IsCharacterHuman(characterIndex) then
					local characterUnit = GetCharacterUnit(characterIndex)
					if not characterUnit then
						return characterIndex
					end
				end
			end
		end
		
		return false
	end
	
	local activateHeroSameTeam = function(teamPtr)
	
		if not self.spawnHero then return end
		
		local characterIndex = self.heroEntityList[teamPtr]
		local heroIndex = self.heroClassIndexList[teamPtr]
		
		--if not heroIndex then return end
		
		if characterIndex then
			if GetCharacterClass(characterIndex) == heroIndex then
				local characterUnit = GetCharacterUnit(characterIndex)
				if characterUnit then
					--print("!!!!!!!!!!!Hero: Hero actiavtion skipped >>", characterIndex)
					return
				end
			end
		end
		
		--Spawn code here
		local newHeroIndex = getUnspawnedBot(teamPtr)
		if newHeroIndex then
			local spawned = spawnChar(teamPtr,newHeroIndex,heroIndex)
			if spawned then
				self.heroEntityList[teamPtr] = newHeroIndex
				self.recentAIHero[newHeroIndex] = true
				--print("!!!!!!!!!!!Hero: Hero actiavtion complete >>", newHeroIndex)
			end
		end
	end
	
	local deactivateHeroSameTeam = function(teamPtr)
		local characterIndex = self.heroEntityList[teamPtr]
		local heroIndex = self.heroClassIndexList[teamPtr]
		
		--if not heroIndex then return end
		
		if not characterIndex then return end --Skip if no hero is active
		if GetCharacterClass(characterIndex) == heroIndex then
			local characterUnit = GetCharacterUnit(characterIndex)
			self.heroEntityList[teamPtr] = nil
			if characterUnit then
				--This check on isConquest is not really needed, but there for safety
				if self.isConquest then
					--This check is to handle the 'infinite' reinforcement count
					--Avoids overflow and automatic defeat
					if GetReinforcementCount(teamPtr) < self.infiniteReforceBound then
						AddReinforcements(teamPtr, 1)
						--print("!!!!!!!!!!!Hero: REFORCE POINT ADDED!")
					end
				end
				KillObject(characterUnit)
				--print("!!!!!!!!!!!Hero: Hero killed due to deactivation >>", characterIndex)
			end
		end
	end
	
	local humanHeroActive = function(teamPtr)
		local teamSize = GetTeamSize(teamPtr)
		for i = 0, (teamSize-1) do
			local characterIndex = GetTeamMember(teamPtr, i)
			if IsCharacterHuman(characterIndex) then
				local charClass = GetCharacterClass(characterIndex)
				if charClass then
					if self.heroClassIndexList[teamPtr] == charClass then
						--print("!!!!!!!!!!!Hero: Human Hero Unit", characterIndex," found as class", charClass, " Team >", teamPtr)
						return true
					end
				end
			end
			
		end
		--print("!!!!!!!!!!!Hero: No Human Hero Unit  Team >", teamPtr)
		return false
	end
	
	local verifySingleHero = function(teamPtr)
		if humanHeroActive(teamPtr) then
			removeAllBotHeroes(teamPtr)
		else
			local heroEntity = self.heroEntityList[teamPtr]
			if heroEntity then
				local heroIndex = self.heroClassIndexList[teamPtr]
				local teamSize = GetTeamSize(teamPtr)
				for i = 0, (teamSize-1) do
					local characterIndex = GetTeamMember(teamPtr, i)
					if characterIndex then
						if not IsCharacterHuman(characterIndex) then
							if characterIndex ~= heroEntity then
								local charClass = GetCharacterClass(characterIndex)
								if charClass then
									if charClass == heroIndex then
										local characterUnit = GetCharacterUnit(characterIndex)
										if characterUnit then
											KillObject(characterUnit)
											--print("!!!!!!!!!!!Hero: Extra hero found and removed  Team >", teamPtr)
										end
									end
								end
							end
						end
					end
				end
			else
				removeAllBotHeroes(teamPtr)
			end
		end
	end
	
	local cycleTimerTest = function(teamPtr)
		local heroIndex = self.heroClassIndexList[teamPtr]
		if heroIndex then
			--print("!!!!!!!!!!!Hero: Timer test1")
			if humanHeroActive(teamPtr) then
				deactivateHeroSameTeam(teamPtr)
				--print("!!!!!!!!!!!Hero: Hero cycle-deactivated")
			else
				if self.shouldHeroSpawnTeam[teamPtr] then
					local characterIndex = self.heroEntityList[teamPtr]
					
					if characterIndex then
						if GetCharacterClass(characterIndex) == heroIndex then
							local charUnit = GetCharacterUnit(characterIndex)
							if not charUnit then
								StartTimer(self.HeroSpawnTimer[teamPtr])
								--print("!!!!!!!!!!!Hero: Spawn Timer Cycle-Started")
							end
						else
							StartTimer(self.HeroSpawnTimer[teamPtr])
							--print("!!!!!!!!!!!Hero: Spawn Timer Cycle-Started")
						end
					else
						StartTimer(self.HeroSpawnTimer[teamPtr])
						--print("!!!!!!!!!!!Hero: Spawn Timer Cycle-Started")
					end
				end
			end
			
			if self.enforceSingleHero then
				verifySingleHero(teamPtr)
				--print("!!!!!!!!!!!Hero: Enforce called >>", teamPtr)
			end
			
		end
	end
	
	local initHeroCycleTimer = function()
		self.AIHeroCycleTimer = CreateTimer("AIHeroCycleTimer")
		SetTimerValue(self.AIHeroCycleTimer, self.cycleTime)
		
		OnTimerElapse(
			function(timer)
				--print("!!!!!!!!!!!Hero: TIMER CALLBACK!")
				StopTimer(self.AIHeroCycleTimer)
				
				-- Other code here
				cycleTimerTest(self.teamATT)
				cycleTimerTest(self.teamDEF)
				
				SetTimerValue(self.AIHeroCycleTimer, self.cycleTime)
				StartTimer(self.AIHeroCycleTimer)
			end,
		self.AIHeroCycleTimer
		)
		
		StartTimer(self.AIHeroCycleTimer)
	end
	
	local createSpawnCallbacks = function(teamPtr)
	
		OnTimerElapse(
			function(timer)
				--print("!!!!!!!!!!!Hero: Hero spawn timer finished", teamPtr)
				StopTimer(self.HeroSpawnTimer[teamPtr])
				SetTimerValue(self.HeroSpawnTimer[teamPtr], self.safetySpawnTime)
				
				if not humanHeroActive(teamPtr) then
					if self.shouldHeroSpawnTeam[teamPtr] then
						--print("!!!!!!!!!!!Hero: Hero activated >>", teamPtr)
						activateHeroSameTeam(teamPtr)
					end
				end
			end,
			self.HeroSpawnTimer[teamPtr]
			)
			
		OnCharacterDeathTeam(
			function(character,killer)
				local charClass = GetCharacterClass(character)
				--if charClass then
					if charClass == self.heroClassIndexList[teamPtr] then
						StopTimer(self.HeroSpawnTimer[teamPtr])
						--print("!!!!!!!!!!!Hero: Hero died >>", character,"Team >>",teamPtr)
						if IsCharacterHuman(character) then
							SetTimerValue(self.HeroSpawnTimer[teamPtr], self.minAfterHuman)
							--print("!!!!!!!!!!!Hero: Hero timer set for humanTime >>", teamPtr)
						else
							SetTimerValue(self.HeroSpawnTimer[teamPtr], self.minSpawnTime)
							--print("!!!!!!!!!!!Hero: Hero timer set for minSpawn >>", teamPtr)
						end
						StartTimer(self.HeroSpawnTimer[teamPtr])
					end
				--end
			end,
			teamPtr
			)
	
	end
	
	local initBotCountProtect = function(teamPtr)
		OnCharacterSpawnTeam(
			function(character)
				if self.recentAIHero[character] then
					local charClass = GetCharacterClass(character)
					if charClass ~= self.heroClassIndexList[teamPtr] then
						--This check on isConquest is not really needed, but there for safety
						if self.isConquest then
							--This check is to handle the 'infinite' reinforcement count
							--Avoids overflow and automatic defeat
							if GetReinforcementCount(teamPtr) < self.infiniteReforceBound then
								AddReinforcements(teamPtr, 1)
								--print("!!!!!!!!!!!Hero: REFORCE POINT ADDED!")
							end
						end
						local charUnit = GetCharacterUnit(character)
						KillObject(charUnit)
						self.recentAIHero[character] = nil
						--print("!!!!!!!!!!!Hero: Recent hero spawn killed >>", character)
					end
				end
			end,
			teamPtr
			)
	end
		
	
	------ Actual function ------
	--print("!!!!!!!!!!!Hero: STARTED!")
	
	--Class check should take 0,1, or 2 heroes into account
	OnCharacterChangeClass( 
		function(character)
			--print("!!!!!!!!!!!Hero: CLASSCHANGE CALLBACK!")
		
			--Ignore AI since they can't be heroes normally
			if not IsCharacterHuman(character) then return end
			
			--print("!!!!!!!!!!!Hero: Human class change!")
			
			--Check class and do what is needed
			local charTeam = GetCharacterTeam(character)
			local charClass = GetCharacterClass(character)
			
			if charTeam == self.teamATT then
				if charClass == self.heroClassIndexList[self.teamATT] then
					deactivateHeroSameTeam(self.teamATT)
					--print("!!!!!!!!!!!Hero: Attack hero deactivated")
				end
			elseif charTeam == self.teamDEF then
				if charClass == self.heroClassIndexList[self.teamDEF] then
					deactivateHeroSameTeam(self.teamDEF)
					--print("!!!!!!!!!!!Hero: Defense hero deactivated")
				end
			end
		end
		)
	
	--Hero cycle timer (callback in function)
	initHeroCycleTimer()
	
	initBotCountProtect(self.teamATT)
	initBotCountProtect(self.teamDEF)
	
	--Checks gameMode and stops hero spawn if AI count is zero
	if self.gameMode then
		local numBots = nil
		local modeString = string.lower(self.gameMode)
		
		if modeString == "conquest" then
			self.isConquest = true
			numBots = ScriptCB_GetCONNumBots()
		elseif modeString == "ctf" then
			numBots = ScriptCB_GetCTFNumBots()
		elseif modeString == "assault" then
			numBots = ScriptCB_GetASSNumBots()
		elseif modeString == "hunt" then
			numBots = ScriptCB_GetASSNumBots()
		elseif modeString == "xl" then
			self.gameMode = nil
			numBots = nil
		elseif modeString == "conqueststyle" then
			self.isConquest = true
			self.gameMode = nil
			numBots = nil
		elseif modeString == "uberconquest" then
			self.isConquest = true
			self.gameMode = nil
			numBots = nil
		elseif modeString == "nonconquest" then
			self.gameMode = nil
			numBots = nil
		else
			self.gameMode = nil
			numBots = nil
			self:PrintError("Warning!: Gamemode not recoginized")
		end
		
		self.botCount = numBots
		--print("!!!!!!!!!!!Hero: Number of bots set >>", self.botCount)
		
		if numBots then
			self:SetBotCount(numBots)
		end
		
		
	end
	
	-- Check for CPs
	if not self.cpAdded then
		self:PrintError("Warning!: No spawn CP added")
	end
	
	
	if self.minSpawnTime then
		
		if self.minSpawnTime < 1 then
			self.minSpawnTime = 15
			self:PrintError("Warning!: minSpawnTime was set to an invalid value, resetting to 15 seconds")
		end
	
	
		self.HeroSpawnTimer[self.teamATT] = CreateTimer("ATTHeroTimer")
		self.HeroSpawnTimer[self.teamDEF] = CreateTimer("DEFHeroTimer")
		
		SetTimerValue(self.HeroSpawnTimer[self.teamATT], self.initSpawnTime)
		SetTimerValue(self.HeroSpawnTimer[self.teamDEF], self.initSpawnTime)
	
		if self.heroClassIndexList[self.teamATT] then
			createSpawnCallbacks(self.teamATT)	
			StartTimer(self.HeroSpawnTimer[self.teamATT])
		end
		
		if self.heroClassIndexList[self.teamDEF] then
			createSpawnCallbacks(self.teamDEF)
			StartTimer(self.HeroSpawnTimer[self.teamDEF])	
		end
		
		
	else
		self:PrintError("Error!: No minSpawnTime set")
	end
	
	
	self.hasStarted = true
		
end --(End of Start())

