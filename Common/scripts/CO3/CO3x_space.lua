--
-- Copyright (c) 2005 Pandemic Studios, LLC. All rights reserved.
-- BF3: Coruscant - Fighter Squadron

-- load the gametype script
ScriptCB_DoFile("Objective")
ScriptCB_DoFile("ObjectiveTDM")
ScriptCB_DoFile("ObjectiveSpaceAssault")
ScriptCB_DoFile("LinkedDestroyables")
ScriptCB_DoFile("setup_teams")

--  REP Attacking (attacker is always #1)
    REP = 1
    CIS = 2
    --  These variables do not change
    ATT = 1
    DEF = 2

local function UpdatePoints()

if GetTeamPoints(ATT) >= 180 then
   MissionVictory(ATT)
end

if GetTeamPoints(DEF) >= 180 then
   MissionVictory(DEF)
end
end

function ScriptPostLoad()
DisableSmallMapMiniMap()
SetupDestroyables()
SetupObjectives()

--AllowAISpawn(1, false) --Both commands are for debug purposes
--AllowAISpawn(2, false)

EnableAIAutoBalance()

if not ScriptCB_InMultiplayer() then  --No new commands for MP
--The following code makes it possible to reduce the texture resolutions of most of the world textures (Code by anthonybf2):
---
---
SupportsCustomFCCommands = true

local moreCommands = nil
if AddFCCommands ~= nil then
moreCommands = AddFCCommands
end

AddFCCommands = function()

ff_AddCommand(
"Reduce Texture Resolutions", -- name of the new fake console button
"This function will load smaller texture resolutions to make the map run more smooth. Note: Once activated the original resolutions can no longer be loaded again UNLESS you restart the map", -- description
function()
ReadDataFile("dc:SIDE\\low_textures.lvl", "low_textures")

return moreCommands()

end
)
end
---
---
  end  
  
SetAIDifficulty(10 , 10 )
   

    	AddAIGoal(ATT, "Deathmatch", 1000)
    	AddAIGoal(DEF, "Deathmatch", 1000)
    SetMapNorthAngle(180, 1)
	--SetUberMode(1);
   

	
SetProperty("rep_frigate_space", "MaxHealth", "1e+37")	
SetProperty("rep_frigate_space", "CurHealth", "1e+37")
SetProperty("cis_frigate_space", "MaxHealth", "1e+37")	
SetProperty("cis_frigate_space", "CurHealth", "1e+37")	

SetProperty("rep_frigate_space_an", "MaxHealth", "1e+37")	
SetProperty("rep_frigate_space_an", "CurHealth", "1e+37")
SetProperty("cis_frigate_space_an", "MaxHealth", "1e+37")	
SetProperty("cis_frigate_space_an", "CurHealth", "1e+37")


SetProperty("rep_frigate_space_1", "MaxHealth", "1e+37")	
SetProperty("rep_frigate_space_1", "CurHealth", "1e+37")	
SetProperty("rep_frigate_space_2", "MaxHealth", "1e+37")	
SetProperty("rep_frigate_space_2", "CurHealth", "1e+37")	
SetProperty("rep_frigate_space_3", "MaxHealth", "1e+37")	
SetProperty("rep_frigate_space_3", "CurHealth", "1e+37")

SetProperty("cis_frigate_space_1", "MaxHealth", "1e+37")	
SetProperty("cis_frigate_space_1", "CurHealth", "1e+37")	
SetProperty("cis_frigate_space_2", "MaxHealth", "1e+37")	
SetProperty("cis_frigate_space_2", "CurHealth", "1e+37")	
SetProperty("cis_frigate_space_3", "MaxHealth", "1e+37")	
SetProperty("cis_frigate_space_3", "CurHealth", "1e+37")


	SetProperty("rep_frigate_space", "HideHealthBar", "1")
	SetProperty("rep_frigate_space_an", "HideHealthBar", "1")
	SetProperty("rep_frigate_space_1", "HideHealthBar", "1")
	SetProperty("rep_frigate_space_2", "HideHealthBar", "1")
	SetProperty("rep_frigate_space_3", "HideHealthBar", "1")
	
	SetProperty("cis_frigate_space", "HideHealthBar", "1")
	SetProperty("cis_frigate_space_an", "HideHealthBar", "1")
	SetProperty("cis_frigate_space_1", "HideHealthBar", "1")
	SetProperty("cis_frigate_space_2", "HideHealthBar", "1")
	SetProperty("cis_frigate_space_3", "HideHealthBar", "1")
	
--Fighters Points
	
OnObjectKill(
  function(object, killer)
    local cis_fighter_1 = GetEntityName(object)
    if cis_fighter_1 == "cis_fly_bomber" then
	AddTeamPoints(ATT, 165)	
	UpdatePoints()
    end
  end
)

OnObjectKill(
  function(object, killer)
    local cis_fighter_2 = GetEntityName(object)
    if cis_fighter_2 == "cis_fly_tri_fighter" then
	AddTeamPoints(ATT, 165)	
	UpdatePoints()
    end
  end
)

OnObjectKill(
  function(object, killer)
    local cis_fighter_3 = GetEntityName(object)
    if cis_fighter_3 == "cis_fly_droid_fighter" then
	AddTeamPoints(ATT, 165)	
	UpdatePoints()
    end
  end
)
-----------------------------------------------------------------------------	
----------------------OBJECTIVES STUFF---------------------------------------
-----------------------------------------------------------------------------	


    objectives = math.random(1,4) --There are four possible waiting periods. From a very short one to a one which takes three times as the very short one.
    if objectives == 1 then
   objectives = CreateTimer("objectives") --Set timer for objectives countdown
   SetTimerValue(objectives, (60.0)) --One minutes
	elseif objectives == 2 then
	   objectives = CreateTimer("objectives") --Set timer for objectives countdown
   SetTimerValue(objectives, (85.0)) --85 seconds
	elseif objectives == 3 then
	   objectives = CreateTimer("objectives") --Set timer for objectives countdown
   SetTimerValue(objectives, (130.0)) --Two minutes+10 seconds
	elseif objectives == 4 then
	   objectives = CreateTimer("objectives") --Set timer for objectives countdown
   SetTimerValue(objectives, (180.0)) --Three minutes
	end
	

	 
   StartTimer(objectives)
   OnTimerElapse(
function(timer)

ShowMessageText("level.co3.space.frigates.rep.a", ATT)
ShowMessageText("level.co3.space.frigates.cis.a", DEF)

MapAddEntityMarker("rep_frigate_space_1", "hud_objective_icon_circle", 6.0, DEF, "RED", true, true, true)
MapAddEntityMarker("rep_frigate_space_2", "hud_objective_icon_circle", 6.0, DEF, "RED", true, true, true)
MapAddEntityMarker("rep_frigate_space_3", "hud_objective_icon_circle", 6.0, DEF, "RED", true, true, true)

MapAddEntityMarker("cis_frigate_space_1", "hud_objective_icon_circle", 6.0, ATT, "RED", true, true, true)
MapAddEntityMarker("cis_frigate_space_2", "hud_objective_icon_circle", 6.0, ATT, "RED", true, true, true)
MapAddEntityMarker("cis_frigate_space_3", "hud_objective_icon_circle", 6.0, ATT, "RED", true, true, true)

SetProperty("rep_frigate_space_1", "CurShield", "50000")
SetProperty("rep_frigate_space_1", "MaxShield", "50000")
SetProperty("rep_frigate_space_1", "MaxHealth", "100000")	
SetProperty("rep_frigate_space_1", "CurHealth", "100000")	
SetProperty("rep_frigate_space_2", "CurShield", "50000")
SetProperty("rep_frigate_space_2", "MaxShield", "50000")
SetProperty("rep_frigate_space_2", "MaxHealth", "100000")	
SetProperty("rep_frigate_space_2", "CurHealth", "100000")
SetProperty("rep_frigate_space_3", "CurShield", "50000")	
SetProperty("rep_frigate_space_3", "MaxShield", "50000")
SetProperty("rep_frigate_space_3", "MaxHealth", "100000")	
SetProperty("rep_frigate_space_3", "CurHealth", "100000")

SetProperty("cis_frigate_space_1", "CurShield", "50000")
SetProperty("cis_frigate_space_1", "MaxShield", "50000")
SetProperty("cis_frigate_space_1", "MaxHealth", "100000")	
SetProperty("cis_frigate_space_1", "CurHealth", "100000")
SetProperty("cis_frigate_space_2", "CurShield", "50000")	
SetProperty("cis_frigate_space_2", "MaxShield", "50000")
SetProperty("cis_frigate_space_2", "MaxHealth", "100000")	
SetProperty("cis_frigate_space_2", "CurHealth", "100000")	
SetProperty("cis_frigate_space_3", "CurShield", "50000")
SetProperty("cis_frigate_space_3", "MaxShield", "50000")
SetProperty("cis_frigate_space_3", "MaxHealth", "100000")	
SetProperty("cis_frigate_space_3", "CurHealth", "100000")

	ClearAIGoals(ATT)
	ClearAIGoals(DEF)

AddAIGoal(ATT, "Destroy", 10, cis_frigate_space_1 )
AddAIGoal(DEF, "Defend", 10, cis_frigate_space_1 )

AddAIGoal(ATT, "Destroy", 10, cis_frigate_space_2 )
AddAIGoal(DEF, "Defend", 10, cis_frigate_space_2 )

AddAIGoal(ATT, "Destroy", 10, cis_frigate_space_3 )
AddAIGoal(DEF, "Defend", 10, cis_frigate_space_3 )

AddAIGoal(DEF, "Destroy", 10, rep_frigate_space_1 )
AddAIGoal(ATT, "Defend", 10, rep_frigate_space_1 )

AddAIGoal(DEF, "Destroy", 10, rep_frigate_space_2 )
AddAIGoal(ATT, "Defend", 10, rep_frigate_space_2 )

AddAIGoal(DEF, "Destroy", 10, rep_frigate_space_3 )
AddAIGoal(ATT, "Defend", 10, rep_frigate_space_3 )

    	AddAIGoal(ATT, "Deathmatch", 40)
    	AddAIGoal(DEF, "Deathmatch", 40)

--Objectives 1 On Finish
rep_frigate_1 = OnObjectKill(
   function(object, killer)
      if GetEntityName(object) == "rep_frigate_space_1" then
		 AddTeamPoints(DEF, 20)	
		 UpdatePoints()
		SetProperty("rep_frigate_space_closed1", "CurHealth", "0")
		SetProperty("rep_frigate_space_closed1", "MaxHealth", "0")	
      end
   end
)

rep_frigate_2 = OnObjectKill(
   function(object, killer)
      if GetEntityName(object) == "rep_frigate_space_2" then
		 AddTeamPoints(DEF, 20)
		 UpdatePoints()
		SetProperty("rep_frigate_space_closed2", "CurHealth", "0")
		SetProperty("rep_frigate_space_closed2", "MaxHealth", "0")
      end
   end
)

rep_frigate_3 = OnObjectKill(
   function(object, killer)
      if GetEntityName(object) == "rep_frigate_space_3" then
		 AddTeamPoints(DEF, 20)
		 UpdatePoints()
		 SetProperty("rep_frigate_space_closed3", "CurHealth", "0")
		SetProperty("rep_frigate_space_closed3", "MaxHealth", "0")
      end
   end
)

cis_frigate_1 = OnObjectKill(
   function(object, killer)
      if GetEntityName(object) == "cis_frigate_space_1" then
		AddTeamPoints(ATT, 20)	
		UpdatePoints()
		SetProperty("cis_frigate_space_closed1", "CurHealth", "0")
		SetProperty("cis_frigate_space_closed1", "MaxHealth", "0")
      end
   end
)

cis_frigate_2 = OnObjectKill(
   function(object, killer)
      if GetEntityName(object) == "cis_frigate_space_2" then
        AddTeamPoints(ATT, 20)
		UpdatePoints()
		SetProperty("cis_frigate_space_closed2", "CurHealth", "0")
		SetProperty("cis_frigate_space_closed2", "MaxHealth", "0")
      end
   end
)

cis_frigate_3 = OnObjectKill(
   function(object, killer)
      if GetEntityName(object) == "cis_frigate_space_3" then
        AddTeamPoints(ATT, 20)
		UpdatePoints()
		SetProperty("cis_frigate_space_closed3", "CurHealth", "0")
		SetProperty("cis_frigate_space_closed3", "MaxHealth", "0")
      end
   end
)



objective_box_a_rep = OnObjectKill(
   function(object, killer)
      if GetEntityName(object) == "objectives_a_rep" then
        AddTeamPoints(DEF, 10)
		UpdatePoints()
	ClearAIGoals(DEF)
	
	ShowMessageText("level.co3.space.frigates.cis.b", DEF)
	
	AddAIGoal(DEF, "Destroy", 50, rep_frigate_space_an )
	AddAIGoal(DEF, "Defend", 10, cis_frigate_space_1 )
	AddAIGoal(DEF, "Defend", 10, cis_frigate_space_2 )
	AddAIGoal(DEF, "Defend", 10, cis_frigate_space_3 )
	AddAIGoal(DEF, "Deathmatch", 20)
	
	SetProperty("rep_frigate_space_an", "MaxShield", "80000")	
	SetProperty("rep_frigate_space_an", "CurShield", "80000")
	SetProperty("rep_frigate_space_an", "MaxHealth", "200000")
	SetProperty("rep_frigate_space_an", "CurHealth", "200000")
	
	MapAddEntityMarker("rep_frigate_space_an", "hud_objective_icon_circle", 7.0, DEF, "RED", true, true, true)
	
      end
   end
)

objective_box_a_cis = OnObjectKill(
   function(object, killer)
      if GetEntityName(object) == "objectives_a_cis" then
        AddTeamPoints(ATT, 10)
		UpdatePoints()
	ClearAIGoals(ATT)
	
	ShowMessageText("level.co3.space.frigates.rep.b", ATT)

	
	AddAIGoal(ATT, "Destroy", 50, cis_frigate_space_an )
	AddAIGoal(ATT, "Defend", 10, rep_frigate_space_1 )
	AddAIGoal(ATT, "Defend", 10, rep_frigate_space_2 )
	AddAIGoal(ATT, "Defend", 10, rep_frigate_space_3 )
	AddAIGoal(ATT, "Deathmatch", 20)

	SetProperty("cis_frigate_space_an", "MaxShield", "80000")
	SetProperty("cis_frigate_space_an", "CurShield", "80000")
	SetProperty("cis_frigate_space_an", "MaxHealth", "200000")
	SetProperty("cis_frigate_space_an", "CurHealth", "200000")
	
	MapAddEntityMarker("cis_frigate_space_an", "hud_objective_icon_circle", 7.0, ATT, "RED", true, true, true)
	
      end
   end
)

--Objectives 2 On Finish

cis_frigate_animated = OnObjectKill(
   function(object, killer)
      if GetEntityName(object) == "cis_frigate_space_an" then
        AddTeamPoints(ATT, 40)
		UpdatePoints()
		
		SetProperty("cis_frigate_space_closed_an", "CurHealth", "0")
		SetProperty("cis_frigate_space_closed_an", "MaxHealth", "0")
		
		ShowMessageText("level.co3.space.frigates.rep.c", ATT)
				
		MapAddEntityMarker("cis_frigate_space", "hud_objective_icon_circle", 8.0, ATT, "RED", true, true, true)
		
		ClearAIGoals(ATT)
		
	AddAIGoal(ATT, "Destroy", 40, cis_frigate_space )
	AddAIGoal(ATT, "Defend", 10, rep_frigate_space )
	AddAIGoal(ATT, "Defend", 10, rep_frigate_space )
	AddAIGoal(ATT, "Deathmatch", 40)
	
	SetProperty("cis_frigate_space", "MaxShield", "100000")	
	SetProperty("cis_frigate_space", "CurShield", "100000")
	SetProperty("cis_frigate_space", "MaxHealth", "350000")
	SetProperty("cis_frigate_space", "CurHealth", "350000")

		
      end
   end
)

rep_frigate_animated = OnObjectKill(
   function(object, killer)
      if GetEntityName(object) == "rep_frigate_space_an" then
        AddTeamPoints(DEF, 40)
		UpdatePoints()
		SetProperty("rep_frigate_space_closed_an", "CurHealth", "0")
		SetProperty("rep_frigate_space_closed_an", "MaxHealth", "0")

		ShowMessageText("level.co3.space.frigates.cis.c", DEF)
			
		MapAddEntityMarker("rep_frigate_space", "hud_objective_icon_circle", 8.0, DEF, "RED", true, true, true)
		
		ClearAIGoals(DEF)
		
	AddAIGoal(DEF, "Destroy", 40, rep_frigate_space )
	AddAIGoal(DEF, "Defend", 10, cis_frigate_space )
	AddAIGoal(DEF, "Defend", 10, cis_frigate_space )
	AddAIGoal(DEF, "Deathmatch", 40)
	
	SetProperty("rep_frigate_space", "MaxShield", "100000")	
	SetProperty("rep_frigate_space", "CurShield", "100000")
	SetProperty("rep_frigate_space", "MaxHealth", "350000")
	SetProperty("rep_frigate_space", "CurHealth", "350000")
      end
   end
)


--Objective 3 On Finish - Instant Victory for Winning Team

victory_ATT = OnObjectKill(
   function(object, killer)
      if GetEntityName(object) == "cis_frigate_space" then

	  MissionVictory(ATT)
	  
      end
   end
)

victory_DEF = OnObjectKill(
   function(object, killer)
      if GetEntityName(object) == "rep_frigate_space" then

	  MissionVictory(DEF)
	  
      end
   end
)

      DestroyTimer(timer)
                 end,
              objectives
              ) 

    SetMapNorthAngle(180, 1)
	if not ScriptCB_InMultiplayer() then
	SetUberMode(1);
	end
--	EnableFlyerPath(team1_fly,1)
--	EnableFlyerPath(team2_fly,1)
   
 end
 
 function SetupObjectives()
    assault = ObjectiveSpaceAssault:New{teamATT = 1, teamDEF = 2, textATT = "game.modes.space", textDEF = "game.modes.space", multiplayerRules = true, isCelebrityDeathmatch = true}

	assault:Start()
	
	end
	
function SetupDestroyables()

    Republic_Frigates = LinkedDestroyables:New{ objectSets = {{"rep_frigate_space_1", "rep_frigate_space_2", "rep_frigate_space_3"}, {"objectives_a_rep"}} }
    Republic_Frigates:Init() 
	
	CIS_Frigates = LinkedDestroyables:New{ objectSets = {{"cis_frigate_space_1", "cis_frigate_space_2", "cis_frigate_space_3"}, {"objectives_a_cis"}} }
    CIS_Frigates:Init() 

	end

function ScriptInit()
    -- Designers, these two lines *MUST* be first!
    SetPS2ModelMemory(3720000)
	
	ReadDataFile("dc:SIDE\\fpanimset.lvl")
    ReadDataFile("dc:ingame.lvl")
    ReadDataFile("ingame.lvl")

	SetMaxFlyHeight(2000)
    SetMaxPlayerFlyHeight (2000)
	SetMinFlyHeight(500)
    SetMinPlayerFlyHeight (500)
	SetGroundFlyerMap(1)

    SetMemoryPoolSize ("ClothData",20)
    SetMemoryPoolSize ("Combo",70)              -- should be ~ 2x number of jedi classes
    SetMemoryPoolSize ("Combo::State",850)      -- should be ~12x #Combo
    SetMemoryPoolSize ("Combo::Transition",850) -- should be a bit bigger than #Combo::State
    SetMemoryPoolSize ("Combo::Condition",850)  -- should be a bit bigger than #Combo::State
    SetMemoryPoolSize ("Combo::Attack",750)     -- should be ~8-12x #Combo
    SetMemoryPoolSize ("Combo::DamageSample",8000)  -- should be ~8-12x #Combo::Attack
    SetMemoryPoolSize ("Combo::Deflect",140)     -- should be ~1x #combo       -- should be ~1x #combo
    
    	ReadDataFile("dc:Sound\\co3.lvl;co3cwspace")
        ReadDataFile("sound\\spa.lvl;spa2cw")

		
		ReadDataFile("dc:SIDE\\airspeeder.lvl",
		"AirSpeeder_speeder_01",
		"AirSpeeder_speeder_02",
		"AirSpeeder_speeder_03",
		"AirSpeeder_speeder_04",
		"AirSpeeder_speeder_05")
		
		ReadDataFile("dc:SIDE\\Republic.lvl",
		"republic_inf_engineer",
		"rep_cap_assultship_dome")
		
		ReadDataFile("dc:SIDE\\cis.lvl",
		"cis_inf_pilot",
		"cis_cap_fedcoreship_dome",
		"cis_cap_fedcruiser_dome")
		
		ReadDataFile("dc:SIDE\\vehicles.lvl",
		"republic_fly_eta2_red",
		"republic_fly_170_fighter",
		"republic_fly_vwing",
		"cis_fly_tri_fighter",
		"cis_fly_droid_fighter",
		"cis_fly_bomber",
		"cis_hover_stap")
   

  SetupTeams{
		rep = {
			team = REP,
			units = 25,
			reinforcements = -1,
			soldier  = { "republic_inf_engineer",5, 25},
	        
		},
		
		cis = {
			team = CIS,
			units = 25,
			reinforcements = -1,
			soldier  = { "cis_inf_pilot",5, 25},
		}
	}
           

    --  Level Stats
    --  ClearWalkers()
    AddWalkerType(0, 4) -- special -> droidekas
    AddWalkerType(1, 0) -- 1x2 (1 pair of legs)
    AddWalkerType(2, 0) -- 2x2 (2 pairs of legs)
    AddWalkerType(3, 0) -- 3x2 (3 pairs of legs)
    local weaponCnt = 1024
    SetMemoryPoolSize("Aimer", 75)
    SetMemoryPoolSize("AmmoCounter", weaponCnt)
    SetMemoryPoolSize("BaseHint", 1024)
    SetMemoryPoolSize("EnergyBar", weaponCnt)
	SetMemoryPoolSize("EntityCloth", 0)
	SetMemoryPoolSize("EntityFlyer", 64)
    SetMemoryPoolSize("EntityHover", 0)
    SetMemoryPoolSize("EntityLight", 200)
    SetMemoryPoolSize("EntitySoundStream", 4)
    SetMemoryPoolSize("EntitySoundStatic", 32)
    SetMemoryPoolSize("MountedTurret", 32)
	SetMemoryPoolSize("Navigator", 128)
    SetMemoryPoolSize("Obstacle", 1024)
	SetMemoryPoolSize("PathNode", 1024)
    SetMemoryPoolSize("SoundSpaceRegion", 64)
    SetMemoryPoolSize("TreeGridStack", 1024)
	SetMemoryPoolSize("UnitAgent", 128)
	SetMemoryPoolSize("UnitController", 128)
	SetMemoryPoolSize("Weapon", weaponCnt)
	SetMemoryPoolSize ("FLEffectObject::OffsetMatrix", 100)

    SetSpawnDelay(10.0, 0.25)
	
    ReadDataFile("dc:CO3\\CO3.lvl", "CO3_CW_Space", "CO3_SoundStreamsSpace")
    SetDenseEnvironment("false")
	
	SetMaxCollisionDistance(1000)
	SetParticleLODBias(3000)

  
    --  Sound
    
    SetSoundEffect("ScopeDisplayZoomIn",  "binocularzoomin")
    SetSoundEffect("ScopeDisplayZoomOut", "binocularzoomout")

    voiceSlow = OpenAudioStream("sound\\global.lvl", "rep_unit_vo_slow")
    AudioStreamAppendSegments("sound\\global.lvl", "cis_unit_vo_slow", voiceSlow)
    AudioStreamAppendSegments("sound\\global.lvl", "global_vo_slow", voiceSlow)
    
    voiceQuick = OpenAudioStream("sound\\global.lvl", "rep_unit_vo_quick")
    AudioStreamAppendSegments("sound\\global.lvl", "cis_unit_vo_quick", voiceQuick)
    
		
    OpenAudioStream("sound\\global.lvl",  "cw_music")
    OpenAudioStream("dc:Sound\\co3.lvl",  "co3_stm")
	OpenAudioStream("dc:Sound\\co3.lvl",  "co3_stm")


    SetBleedingVoiceOver(REP, REP, "rep_off_com_report_us_overwhelmed", 1)
    SetBleedingVoiceOver(REP, CIS, "rep_off_com_report_enemy_losing",   1)
    SetBleedingVoiceOver(CIS, REP, "cis_off_com_report_enemy_losing",   1)
    SetBleedingVoiceOver(CIS, CIS, "cis_off_com_report_us_overwhelmed", 1)

    SetOutOfBoundsVoiceOver(2, "cisleaving")
    SetOutOfBoundsVoiceOver(1, "repleaving")

    SetAmbientMusic(REP, 1.0, "rep_spa_amb_start",  0,1)
    SetAmbientMusic(REP, 0.99, "rep_spa_amb_middle", 1,1)
    SetAmbientMusic(REP, 0.1,"rep_spa_amb_end",    2,1)
    SetAmbientMusic(CIS, 1.0, "cis_spa_amb_start",  0,1)
    SetAmbientMusic(CIS, 0.99, "cis_spa_amb_middle", 1,1)
    SetAmbientMusic(CIS, 0.1,"cis_spa_amb_end",    2,1)
    
    SetVictoryMusic(REP, "rep_spa_amb_victory")
    SetDefeatMusic (REP, "rep_spa_amb_defeat")
    SetVictoryMusic(CIS, "cis_spa_amb_victory")
    SetDefeatMusic (CIS, "cis_spa_amb_defeat")

    SetSoundEffect("ScopeDisplayZoomIn",      "binocularzoomin")
    SetSoundEffect("ScopeDisplayZoomOut",     "binocularzoomout")
    --SetSoundEffect("BirdScatter",             "birdsFlySeq1")
    --SetSoundEffect("WeaponUnableSelect",      "com_weap_inf_weaponchange_null")
    --SetSoundEffect("WeaponModeUnableSelect",  "com_weap_inf_modechange_null")
    SetSoundEffect("SpawnDisplayUnitChange",       "shell_select_unit")
    SetSoundEffect("SpawnDisplayUnitAccept",       "shell_menu_enter")
    SetSoundEffect("SpawnDisplaySpawnPointChange", "shell_select_change")
    SetSoundEffect("SpawnDisplaySpawnPointAccept", "shell_menu_enter")
    SetSoundEffect("SpawnDisplayBack",             "shell_menu_exit")

	
    SetAttackingTeam(ATT)
	
	AddCameraShot(0.732537, -0.052781, 0.676923, 0.048774, 1452.962646, 1069.620117, 20.667675); --Republic Vessel
	AddCameraShot(0.705597, -0.014701, -0.708307, -0.014757, -1315.121460, 899.454956, -51.212658); --Cis Vessel
	
	AddLandingRegion("rep_space_landing")
	AddLandingRegion("cis_space_landing")
end
