--
-- Copyright (c) 2005 Pandemic Studios, LLC. All rights reserved.
-- BF3: Coruscant - Turning Point Mode

-- load the gametype script
ScriptCB_DoFile("ObjectiveConquestSiege")
ScriptCB_DoFile("setup_teams") 
ScriptCB_DoFile("LinkedDestroyables")
if not ScriptCB_InMultiplayer() then
ScriptCB_DoFile("AIHeroSupport")
end

	--  REP Attacking (attacker is always #1)
    REP = 1;
    CIS = 2;
    --  These variables do not change
    ATT = REP;
    DEF = CIS;


function ScriptPostLoad()	  

--AllowAISpawn(1, false) --Both commands are for debug purposes
--AllowAISpawn(2, false)



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
     
    --This defines the CPs.  These need to happen first
    cp1_zone1 = CommandPost:New{name = "cp1_zone1"}
    cp2_zone1 = CommandPost:New{name = "cp2_zone1"}
	cp3_zone2 = CommandPost:New{name = "cp3_zone2"}
	--cp2_zone1 = CommandPost:New{name = "cis_frigate_cp"}

    
    
    --This sets up the actual objective.  This needs to happen after cp's are defined
    conquest = ObjectiveConquest:New{teamATT = ATT, teamDEF = DEF, 
                                     textATT = "game.modes.siege", 
                                     textDEF = "game.modes.siege2",
                                     multiplayerRules = true}
    
    --This adds the CPs to the objective.  This needs to happen after the objective is set up
    conquest:AddCommandPost(cp1_zone1)
    conquest:AddCommandPost(cp2_zone1) 
	conquest:AddCommandPost(cp3_zone2) 
	--conquest:AddCommandPost(cis_frigate_cp)
    
    conquest:Start()
	
--First Commands before Start 

--[[	BlockPlanningGraphArcs("Connection63")
	BlockPlanningGraphArcs("Connection64")
	BlockPlanningGraphArcs("Connection65")
	BlockPlanningGraphArcs("Connection66")
	BlockPlanningGraphArcs("Connection67")
	BlockPlanningGraphArcs("Connection64")
	BlockPlanningGraphArcs("Connection65")
	BlockPlanningGraphArcs("Connection66")
	BlockPlanningGraphArcs("Connection67")
	BlockPlanningGraphArcs("Connection68")
	BlockPlanningGraphArcs("Connection69")
	BlockPlanningGraphArcs("Connection70")
	BlockPlanningGraphArcs("Connection71")
	BlockPlanningGraphArcs("Connection72")
	BlockPlanningGraphArcs("Connection73")
	BlockPlanningGraphArcs("Connection74")
	BlockPlanningGraphArcs("Connection75")
	BlockPlanningGraphArcs("Connection76")
	BlockPlanningGraphArcs("Connection77")
	BlockPlanningGraphArcs("Connection78")
	BlockPlanningGraphArcs("Connection79")
	BlockPlanningGraphArcs("Connection80") ]]
	
	DisableBarriers("cw_bar1")
	DisableBarriers("cw_bar2")
	DisableBarriers("cw_bar3")
	DisableBarriers("cw_bar4")
	DisableBarriers("cw_bar5")
	DisableBarriers("cw_bar6")
	DisableBarriers("cw_bar7")
	DisableBarriers("cw_bar8")
	DisableBarriers("cw_bar9")
	DisableBarriers("cw_bar10")
	DisableBarriers("cw_bar11")
	
	KillObject("cis_frigate_cp")
	SetProperty("cis_frigate_siege", "MaxHealth", "1e+37")
	SetProperty("cis_frigate_siege", "CurHealth", "1e+37")
	
	KillObject("cp3_zone2")
	

	
------------------------------------------------------------------------------------------------
---------------------Objective 1 Capture Zone 1 CP----------------------------------------------
---------------------START OBJECTIVE------------------------------------------------------------
------------------------------------------------------------------------------------------------



firstmessages = CreateTimer("firstmessages")
   SetTimerValue(firstmessages, (10.0))

StartTimer(firstmessages)
   OnTimerElapse(
function(timer)

--Messages
ShowMessageText("level.co3.turning.objectives.1_rep", ATT)
ShowMessageText("level.co3.turning.objectives.1_cis", DEF)

      DestroyTimer(timer)
                 end,
              firstmessages
              ) 
			  


--Clear all AI Goals
ClearAIGoals(ATT)
ClearAIGoals(DEF)

--Allow AI to capture certain CP's
AICanCaptureCP("cp1_zone1", DEF, false)
AICanCaptureCP("cp1_zone1", ATT, false)
AICanCaptureCP("cp2_zone1", DEF, true)
AICanCaptureCP("cp2_zone1", ATT, true)

--REPUBLIC GOAL--
REP_Capture_Zone1 = AddAIGoal (ATT,"Conquest", 80, "cp2_zone1")
REP_Deathmatch_Zone1 = AddAIGoal (ATT,"Deathmatch", 20)

--CIS GOAL--
CIS_Defend_Zone1 = AddAIGoal (DEF,"Defend", 20, "cp2_zone1")
CIS_Deathmatch_Zone1 = AddAIGoal (DEF,"Deathmatch", 80)

--Add marker to certain object
MapAddEntityMarker("cp2_zone1", "hud_objective_icon", 2.5, ATT, "YELLOW", true)
MapAddEntityMarker("cp2_zone1", "hud_objective_icon", 2.5, DEF, "YELLOW", true)
	
	
--Actual function on finish. If ATT captures the CP objectives will continue.

   	Zone1CaptureATT = OnFinishCaptureName(
		function (postPtr)
			if GetObjectTeam(postPtr) == ATT then
			
				AddReinforcements(ATT, 50) 
			
				SetProperty("cp2_zone1", "Value_ATK_CIS", "0")
				SetProperty("cp2_zone1", "Value_DEF_CIS", "0")
				SetProperty("cp2_zone1", "CaptureRegion", "distractionzone1") 
				SetObjectTeam("cp2_zone1", 1)
				MapRemoveEntityMarker("cp2_zone1")
				
				--Delete AI Goals 
				DeleteAIGoal(REP_Defend_Zone1)
				DeleteAIGoal(REP_Deathmatch_Zone1)

				DeleteAIGoal(CIS_Defend_Zone1)
				DeleteAIGoal(CIS_Deathmatch_Zone1)
				
				SetObjectTeam("cis_tur_zone1_1", 1)
				SetObjectTeam("cis_tur_zone1_2", 1)
				SetObjectTeam("cis_tur_zone1_3", 1)
				SetObjectTeam("cis_tur_zone1_4", 1)
				SetObjectTeam("cis_tur_zone1_5", 1)
				SetObjectTeam("cis_tur_zone1_6", 1)
				SetObjectTeam("cis_tur_zone1_7", 1)
				SetObjectTeam("cis_tur_zone1_8", 1)
				
				ClearAIGoals(ATT)
				ClearAIGoals(DEF)
				
				
				RespawnObject("cis_frigate_cp")
				SetObjectTeam("cis_frigate_cp", 2)
				
				SetObjectTeam("bar_shieldgen1", 2)
				SetObjectTeam("bar_shieldgen2", 2)
				
				SetProperty("bar_shieldgen1", "CurHealth", 5500)
				SetProperty("bar_shieldgen1", "MaxHealth", 5500)
				SetProperty("bar_shieldgen1", "AddShield", 0)
				
				SetProperty("bar_shieldgen1", "AINoRepair", 0)
				
				SetProperty("bar_shieldgen2", "CurHealth", 5500)
				SetProperty("bar_shieldgen2", "MaxHealth", 5500)
				SetProperty("bar_shieldgen2", "AddShield", 0)
				
				SetProperty("bar_shieldgen2", "AINoRepair", 0)
				
				RespawnObject("cp3_zone2")
				SetObjectTeam("cp3_zone2", 2)
				
				
					--Messages
	ShowMessageText("level.co3.turning.objectives.2_rep", ATT)
	ShowMessageText("level.co3.turning.objectives.2_cis", DEF)
				
				--Allow AI to capture certain CP's
AICanCaptureCP("cp2_zone1", DEF, false)
AICanCaptureCP("cp2_zone1", ATT, false)
AICanCaptureCP("cp3_zone2", DEF, false)
AICanCaptureCP("cp3_zone2", ATT, false)

--REPUBLIC GOAL--
REP_Destroy_Gen1 = AddAIGoal (ATT,"Destroy", 25, "bar_shieldgen1")
REP_Destroy_Gen2 = AddAIGoal (ATT,"Destroy", 25, "bar_shieldgen2")
REP_Deathmatch_Zone2 = AddAIGoal (ATT,"Deathmatch", 50)

--CIS GOAL--
CIS_Defend_Gen1 = AddAIGoal (DEF,"Defend", 25, "bar_shieldgen1")
CIS_Defend_Gen2 = AddAIGoal (DEF,"Defend", 25, "bar_shieldgen2")
CIS_Deathmatch_Zone2 = AddAIGoal (DEF,"Deathmatch", 50)

--Add marker to certain object
MapAddEntityMarker("bar_shieldgen1", "hud_objective_icon", 2.0, ATT, "RED", true)
MapAddEntityMarker("bar_shieldgen2", "hud_objective_icon", 2.0, ATT, "RED", true)
MapAddEntityMarker("bar_shieldgen1", "hud_objective_icon", 2.0, DEF, "YELLOW", true)
MapAddEntityMarker("bar_shieldgen2", "hud_objective_icon", 2.0, DEF, "YELLOW", true)


KillObject("cp1_zone1")

				
				ReleaseFinishCapture(Zone1CaptureATT)
				
			end
		end,
		"cp2_zone1"
		)
		
		
------------------------------------------------------------------------------------------------
---------------------Objective 2 Deactivate Shields AND Capture Zone 2 CP-----------------------
---------------------START OBJECTIVE------------------------------------------------------------
------------------------------------------------------------------------------------------------

Shieldgen1 = OnObjectKill(
   function(object, killer)
      if GetEntityName(object) == "bar_shieldgen1" then
	  
	  AddReinforcements(ATT, 20) 
				SetProperty("bar_shieldgen1", "CurHealth", 0)
				SetProperty("bar_shieldgen1", "MaxHealth", 0)
				SetProperty("bar_shieldgen1", "AddShield", 0)
				
				SetProperty("bar_shieldgen1", "AINoRepair", 1)
				SetObjectTeam("bar_shieldgen1", 0)
				MapRemoveEntityMarker("bar_shieldgen1")
				DeleteAIGoal(REP_Destroy_Gen1)
				DeleteAIGoal(CIS_Defend_Gen1)
      end
   end
)

Shieldgen2 = OnObjectKill(
   function(object, killer)
      if GetEntityName(object) == "bar_shieldgen2" then
	  
	  AddReinforcements(ATT, 20) 
				SetProperty("bar_shieldgen2", "CurHealth", 0)
				SetProperty("bar_shieldgen2", "MaxHealth", 0)
				SetProperty("bar_shieldgen2", "AddShield", 0)
				
					--Messages
				ShowMessageText("level.co3.turning.events.generator_dest_rep", ATT)
				ShowMessageText("level.co3.turning.events.generator_dest_cis", DEF)
				
				SetProperty("bar_shieldgen2", "AINoRepair", 1)
				SetObjectTeam("bar_shieldgen2", 0)
				MapRemoveEntityMarker("bar_shieldgen2")
				DeleteAIGoal(REP_Destroy_Gen2)
				DeleteAIGoal(CIS_Defend_Gen2)
      end
   end
)


Bar_Shield_Kill = OnObjectKill(
   function(object, killer)
      if GetEntityName(object) == "shield_cube" then
        SetProperty("bar_shield", "CurHealth", 0)
        SetProperty("bar_shield", "MaxHealth", 0)
		
		DeleteAIGoal(REP_Deathmatch_Zone2)
		DeleteAIGoal(CIS_Deathmatch_Zone2)
		
		
--[[	UnBlockPlanningGraphArcs("Connection63")
	UnBlockPlanningGraphArcs("Connection64")
	UnBlockPlanningGraphArcs("Connection65")
	UnBlockPlanningGraphArcs("Connection66")
	UnBlockPlanningGraphArcs("Connection67")
	UnBlockPlanningGraphArcs("Connection64")
	UnBlockPlanningGraphArcs("Connection65")
	UnBlockPlanningGraphArcs("Connection66")
	UnBlockPlanningGraphArcs("Connection67")
	UnBlockPlanningGraphArcs("Connection68")
	UnBlockPlanningGraphArcs("Connection69")
	UnBlockPlanningGraphArcs("Connection70")
	UnBlockPlanningGraphArcs("Connection71")
	UnBlockPlanningGraphArcs("Connection72")
	UnBlockPlanningGraphArcs("Connection73")
	UnBlockPlanningGraphArcs("Connection74")
	UnBlockPlanningGraphArcs("Connection75")
	UnBlockPlanningGraphArcs("Connection76")
	UnBlockPlanningGraphArcs("Connection77")
	UnBlockPlanningGraphArcs("Connection78")
	UnBlockPlanningGraphArcs("Connection79")
	UnBlockPlanningGraphArcs("Connection80")
	]]	
		
--REP GOAL--
REP_Capture_Zone2 = AddAIGoal (ATT,"Conquest", 60, "cp3_zone2")
REP_Deathmatch_Zone2 = AddAIGoal (ATT,"Deathmatch", 40)

--CIS GOAL--
CIS_Defend_Zone2 = AddAIGoal (DEF,"Defend", 40, "cp3_zone2")
CIS_Deathmatch_Zone2 = AddAIGoal (DEF,"Deathmatch", 60)

AICanCaptureCP("cp3_zone2", DEF, true)
AICanCaptureCP("cp3_zone2", ATT, true)

	MapAddEntityMarker("cp3_zone2", "hud_objective_icon", 2.5, ATT, "YELLOW", true)
	MapAddEntityMarker("cp3_zone2", "hud_objective_icon", 2.5, DEF, "YELLOW", true)
	
	--Messages
	ShowMessageText("level.co3.turning.objectives.3_rep", ATT)
	ShowMessageText("level.co3.turning.objectives.3_cis", DEF)



      end
   end
)

Zone2CaptureATT = OnFinishCaptureName(
		function (postPtr)
			if GetObjectTeam(postPtr) == ATT then
			
				AddReinforcements(ATT, 100) 
				
			
				ClearAIGoals(ATT)
				ClearAIGoals(DEF)
				
				AICanCaptureCP("cp3_zone2", DEF, false)
				AICanCaptureCP("cp3_zone2", ATT, false)

				SetProperty("cp3_zone2", "Value_ATK_CIS", "0")
				SetProperty("cp3_zone2", "Value_DEF_CIS", "0")
				SetProperty("cp3_zone2", "CaptureRegion", "distractionzone2") 
				SetObjectTeam("cp3_zone2", 1)
				MapRemoveEntityMarker("cp3_zone2")
				
				
				
				ReleaseFinishCapture(Zone2CaptureATT)
				
				
			end
		end,
		"cp3_zone2"
		)
			
			
			
			
			
	if not ScriptCB_InMultiplayer() then
	herosupport = AIHeroSupport:New{gameMode = "Conquest",}
	herosupport:SetHeroClass(REP, "heroes_republic_ferroda")
	herosupport:SetHeroClass(CIS, "heroes_cis_jango")
	herosupport:AddSpawnCP("cp1_zone1","ctf_cp1_spawn")
	herosupport:AddSpawnCP("cp2_zone1","ctf_cp2_spawn")
	herosupport:AddSpawnCP("cp3_zone2","ctf_cp3_spawn")
	herosupport:Start()
	end
	
	SetMapNorthAngle(180, 1)
	SetUberMode(1);
	SetupDestroyables()
	SetAIDifficulty(2 , 2 )
    EnableSPHeroRules()
    
 end
 
function SetupDestroyables()

    Bar_Shield_Cube = LinkedDestroyables:New{ objectSets = {{"shield_cube"}, {"bar_shieldgen1", "bar_shieldgen2"}} }
    Bar_Shield_Cube:Init() 
	
end

	
---------------------------------------------------------------------------
-- FUNCTION:    ScriptInit
-- PURPOSE:     This function is only run once
-- INPUT:
-- OUTPUT:
-- NOTES:       The name, 'ScriptInit' is a chosen convention, and each
--              mission script must contain a version of this function, as
--              it is called from C to start the mission.
---------------------------------------------------------------------------



function ScriptInit()


--SetMemoryPoolSize("ParticleTransformer::ColorTrans", 2564)
--SetMemoryPoolSize("ParticleTransformer::PositionTr", 1522)
--SetMemoryPoolSize("ParticleTransformer::SizeTransf", 1699)

	ReadDataFile("dc:SIDE\\fpanimset.lvl")
    ReadDataFile("dc:ingame.lvl")
    ReadDataFile("ingame.lvl")
	


	SetMaxFlyHeight(1000)
    SetMaxPlayerFlyHeight (1000)
	SetMinFlyHeight(-550)
    SetMinPlayerFlyHeight (-550)
	SetGroundFlyerMap(1)
    
	
	SetMemoryPoolSize ("ClothData",20)
    SetMemoryPoolSize ("Combo",50)              -- should be ~ 2x number of jedi classes
    SetMemoryPoolSize ("Combo::State",650)      -- should be ~12x #Combo
    SetMemoryPoolSize ("Combo::Transition",650) -- should be a bit bigger than #Combo::State
    SetMemoryPoolSize ("Combo::Condition",650)  -- should be a bit bigger than #Combo::State
    SetMemoryPoolSize ("Combo::Attack",550)     -- should be ~8-12x #Combo
    SetMemoryPoolSize ("Combo::DamageSample",6000)  -- should be ~8-12x #Combo::Attack
    SetMemoryPoolSize ("Combo::Deflect",100)     -- should be ~1x #combo  
	
		ReadDataFile("dc:Sound\\co3.lvl;co3cwmap")
		ReadDataFile("sound\\pol.lvl;pol1cw")
		
		
		ReadDataFile("dc:SIDE\\airspeeder.lvl",
		"AirSpeeder_speeder_01",
		"AirSpeeder_speeder_02",
		"AirSpeeder_speeder_03",
		"AirSpeeder_speeder_04",
		"AirSpeeder_speeder_05")
		
		ReadDataFile("dc:SIDE\\Republic.lvl",
		"republic_inf_rifleman",
		"republic_inf_heavytrooper",
		"republic_inf_sniper",
		"republic_inf_engineer",
		"republic_inf_officer",
		"republic_inf_jettrooper",
		"rep_cap_assultship_dome")
		
		ReadDataFile("dc:SIDE\\cis.lvl",
        "cis_inf_rifleman",
		"cis_inf_pilot",
		"cis_inf_sniper",
		"cis_inf_sbd",
		"cis_inf_magna",
		"cis_inf_droideka",
		"cis_cap_fedcoreship_dome",
		"cis_cap_fedcruiser_dome")
		
		ReadDataFile("dc:SIDE\\heroes.lvl",
		"heroes_cis_jango",
		"heroes_republic_ferroda")
		
		ReadDataFile("dc:SIDE\\vehicles.lvl",
		"republic_hover_fightertank",
		"cis_fly_tri_fighter",
		"cis_fly_droid_fighter",
		"cis_hover_aat")
		
		ReadDataFile("dc:SIDE\\turrets.lvl",
		"turrets_ground_turret",
		"turrets_anti_air")
		
		ReadDataFile("dc:SIDE\\tur.lvl",
        "tur_bldg_chaingun_tripod_co3")
	
           


	SetupTeams{
		rep = {
			team = REP,
			units = 35,
			reinforcements = 75,
			soldier  = { "republic_inf_rifleman",5, 10},
			assault  = { "republic_inf_heavytrooper",2, 5},
			sniper = { "republic_inf_sniper",2, 5},
			engineer   = { "republic_inf_engineer",2, 5},
			officer = {"republic_inf_officer",2, 5},
			special = { "republic_inf_jettrooper",2, 5},
	        
		},
		
		cis = {
			team = CIS,
			units = 25,
			reinforcements = -1,
			soldier  = { "cis_inf_rifleman",2, 8},
		--	assault  = { "",4, 10},
			sniper = { "cis_inf_sniper",1, 4},
			engineer   = { "cis_inf_pilot",1, 4},
			officer = {"cis_inf_magna",1, 4},
			special = { "cis_inf_sbd",1, 4},
		}
	}
	
	AddUnitClass(CIS,"cis_inf_droideka",1,4)
	

    --  Level Stats
    ClearWalkers()
    AddWalkerType(0, 4) -- special -> droidekas
    AddWalkerType(1, 4) -- 1x2 (1 pair of legs)
    AddWalkerType(2, 0) -- 2x2 (2 pairs of legs)
    AddWalkerType(3, 0) -- 3x2 (3 pairs of legs)
	
	local weaponCnt = 1024 
    SetMemoryPoolSize("Aimer", 75)
    SetMemoryPoolSize("AmmoCounter", weaponCnt)
    SetMemoryPoolSize("BaseHint", 1024)
    SetMemoryPoolSize("EnergyBar", weaponCnt)
	SetMemoryPoolSize("EntityCloth", 32)
	SetMemoryPoolSize("EntityFlyer", 28)
    SetMemoryPoolSize("EntityHover", 6)
    SetMemoryPoolSize("EntityLight", 200)
    SetMemoryPoolSize("EntitySoundStream", 12)
    SetMemoryPoolSize("EntitySoundStatic", 32)
	SetMemoryPoolSize("CommandFlyer", 4)
    SetMemoryPoolSize("MountedTurret", 64)
	SetMemoryPoolSize("Navigator", 128)
    SetMemoryPoolSize("Obstacle", 1024)
	SetMemoryPoolSize("PathNode", 1024)
    SetMemoryPoolSize("SoundSpaceRegion", 64)
    SetMemoryPoolSize("TreeGridStack", 1024)
	SetMemoryPoolSize("UnitAgent", 128)
	SetMemoryPoolSize("UnitController", 128)
	SetMemoryPoolSize("Weapon", weaponCnt)
	SetMemoryPoolSize("EntityRemoteTerminal",1)
    SetMemoryPoolSize("FLEffectObject::OffsetMatrix", 120)
	
    SetSpawnDelay(10.0, 0.5)
	
    ReadDataFile("dc:CO3\\CO3.lvl", "CO3_CW_Siege", "CO3_Deathregions", "CO3_SoundStreamsSpace")

		  
    SetDenseEnvironment("false")


    --  Sound
    
    SetSoundEffect("ScopeDisplayZoomIn",  "binocularzoomin")
    SetSoundEffect("ScopeDisplayZoomOut", "binocularzoomout")
	

	
    voiceSlow = OpenAudioStream("sound\\global.lvl", "rep_unit_vo_slow")
    AudioStreamAppendSegments("sound\\global.lvl", "cis_unit_vo_slow", voiceSlow)
    AudioStreamAppendSegments("sound\\global.lvl", "global_vo_slow", voiceSlow)
	

		
    voiceQuick = OpenAudioStream("sound\\global.lvl", "rep_unit_vo_quick")
    AudioStreamAppendSegments("sound\\global.lvl", "cis_unit_vo_quick", voiceQuick)
	
    OpenAudioStream("dc:sound\\co3.lvl", "cw_hero_vo_slow")

    OpenAudioStream("sound\\global.lvl",  "cw_music")
    OpenAudioStream("dc:Sound\\co3.lvl",  "co3_stm")
	OpenAudioStream("dc:Sound\\co3.lvl",  "co3_stm")
	
    SetBleedingVoiceOver(REP, REP, "rep_off_com_report_us_overwhelmed", 1)
    SetBleedingVoiceOver(REP, CIS, "rep_off_com_report_enemy_losing",   1)
    SetBleedingVoiceOver(CIS, REP, "cis_off_com_report_enemy_losing",   1)
    SetBleedingVoiceOver(CIS, CIS, "cis_off_com_report_us_overwhelmed", 1)

    SetOutOfBoundsVoiceOver(2, "cisleaving")
    SetOutOfBoundsVoiceOver(1, "repleaving")

   SetAmbientMusic(REP, 1.0, "rep_pol_amb_start",  0,1)
    SetAmbientMusic(REP, 0.8, "rep_pol_amb_middle", 1,1)
    SetAmbientMusic(REP, 0.2,"rep_pol_amb_end",    2,1)
    SetAmbientMusic(CIS, 1.0, "cis_pol_amb_start",  0,1)
    SetAmbientMusic(CIS, 0.8, "cis_pol_amb_middle", 1,1)
    SetAmbientMusic(CIS, 0.2,"cis_pol_amb_end",    2,1)

    SetVictoryMusic(REP, "rep_pol_amb_victory")
    SetDefeatMusic (REP, "rep_pol_amb_defeat")
    SetVictoryMusic(CIS, "cis_pol_amb_victory")
    SetDefeatMusic (CIS, "cis_pol_amb_defeat")
	

    SetSoundEffect("ScopeDisplayZoomIn",      "binocularzoomin")
    SetSoundEffect("ScopeDisplayZoomOut",     "binocularzoomout")
    SetSoundEffect("SpawnDisplayUnitChange",       "shell_select_unit")
    SetSoundEffect("SpawnDisplayUnitAccept",       "shell_menu_enter")
    SetSoundEffect("SpawnDisplaySpawnPointChange", "shell_select_change")
    SetSoundEffect("SpawnDisplaySpawnPointAccept", "shell_menu_enter")
    SetSoundEffect("SpawnDisplayBack",             "shell_menu_exit")

	
    AddCameraShot(0.982204, -0.132888, -0.131524, -0.017795, 102.451683, -248.963608, 117.954056); --opening shot
	AddCameraShot(0.706555, -0.027765, -0.706567, -0.027766, 1.175141, -293.920898, 0.094850); --tunnel
	AddCameraShot(0.361071, 0.106505, -0.888586, 0.262105, -171.654434, -278.825104, -155.103256); --building
	AddCameraShot(0.002745, -0.000022, -0.999965, -0.007855, -67.152054, -281.399109, -55.667088); --Interior Bar
	AddCameraShot(-0.302795, 0.044057, -0.942116, -0.137081, 19.078167, -274.236206, -7.283313); --Interior Middle
	AddCameraShot(0.222218, -0.003227, -0.974889, -0.014157, 80.102913, -288.778595, 48.925350); --Bridge

	
	AddLandingRegion("landing_siege")
	AddLandingRegion("cis_landing_frigate_siege")
end
