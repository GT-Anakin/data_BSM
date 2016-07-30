--
-- Copyright (c) 2005 Pandemic Studios, LLC. All rights reserved.
-- BF3: Coruscant - CTF 1-Flag Mode

-- load the gametype script
Conquest = ScriptCB_DoFile("ObjectiveOneFlagCTF")
ScriptCB_DoFile("setup_teams") 
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

	SoundEvent_SetupTeams( REP, 'rep', CIS, 'cis' )
    
    ctf = ObjectiveOneFlagCTF:New{teamATT = REP, teamDEF = CIS,
                           textATT = "game.modes.1flag", textDEF = "game.modes.1flag2",
                           captureLimit = 5, flag = "flag", flagIcon = "flag_icon", 
                           flagIconScale = 3.0, homeRegion = "homeregion",
                           captureRegionATT = "team1_capture", captureRegionDEF = "team2_capture",
                           capRegionMarkerATT = "hud_objective_icon_circle", capRegionMarkerDEF = "hud_objective_icon_circle",
                           capRegionMarkerScaleATT = 3.0, capRegionMarkerScaleDEF = 3.0, multiplayerRules = true}

    ctf:Start()    
    
	if not ScriptCB_InMultiplayer() then
	herosupport = AIHeroSupport:New{gameMode = "CTF",}
	herosupport:SetHeroClass(REP, "heroes_republic_obiwan")
	herosupport:SetHeroClass(CIS, "heroes_cis_dooku")
	herosupport:AddSpawnCP("1flag_cp1","1flag_cp1_spawn")
	herosupport:AddSpawnCP("1flag_cp2","1flag_cp2_spawn")
	herosupport:AddSpawnCP("1flag_cp3","1flag_cp3_spawn")
	herosupport:AddSpawnCP("1flag_cp4","1flag_cp4_spawn")
	herosupport:Start()
	end
	
	SetMapNorthAngle(180, 1)
--	if not ScriptCB_InMultiplayer() then
--	SetUberMode(1);
--	end
	SetAIDifficulty(2 , 2 )
    EnableSPHeroRules()
    
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

	ReadDataFile("dc:SIDE\\fpanimset.lvl")
    ReadDataFile("dc:ingame.lvl")   
    ReadDataFile("ingame.lvl")
    
   
	SetMaxFlyHeight(0)
    SetMaxPlayerFlyHeight (0)
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
    
		ReadDataFile("dc:Sound\\co3.lvl;co3cw")
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
		"heroes_cis_dooku",
		"heroes_republic_obiwan")
		 
		ReadDataFile("dc:SIDE\\vehicles.lvl",
		"cis_hover_stap",
		"cis_hover_aat",
		"republic_hover_fightertank")   
		
		ReadDataFile("dc:SIDE\\turrets.lvl",
		"turrets_ground_turret",
		"turrets_anti_air")

		
	SetupTeams{
		rep = {
			team = REP,
			units = 32,
			reinforcements = -1,
			soldier  = { "republic_inf_rifleman",8, 15},
			assault  = { "republic_inf_heavytrooper",3, 8},
			engineer = { "republic_inf_engineer",3, 8},
			sniper   = { "republic_inf_sniper",3, 8},
			officer = {"republic_inf_officer",3, 8},
			special = { "republic_inf_jettrooper",3, 8},
	        
		},
		
		cis = {
			team = CIS,
			units = 32,
			reinforcements = -1,
			soldier  = { "cis_inf_rifleman",8, 15},
		--	assault  = { "",3, 8},
			engineer = { "cis_inf_sniper",3, 8},
			sniper   = { "cis_inf_pilot",3, 8},
			officer = {"cis_inf_magna",3, 8},
			special = { "cis_inf_sbd",3, 8},
		}
	}
	
	AddUnitClass(CIS,"cis_inf_droideka",3,8)
     
   -- SetHeroClass(CIS, "heroes_cis_dooku")
   -- SetHeroClass(REP, "heroes_republic_obiwan")
   

    --  Level Stats
    --  ClearWalkers()
	ClearWalkers()
    AddWalkerType(0, 8) -- special -> droidekas
    AddWalkerType(1, 4) -- 1x2 (1 pair of legs)
    AddWalkerType(2, 0) -- 2x2 (2 pairs of legs)
    AddWalkerType(3, 0) -- 3x2 (3 pairs of legs)
    local weaponCnt = 1024
    SetMemoryPoolSize("Aimer", 75)
    SetMemoryPoolSize("AmmoCounter", weaponCnt)
    SetMemoryPoolSize("BaseHint", 1024)
    SetMemoryPoolSize("EnergyBar", weaponCnt)
	SetMemoryPoolSize("EntityCloth", 32)
	SetMemoryPoolSize("EntityFlyer", 32)
    SetMemoryPoolSize("EntityHover", 32)
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
	SetMemoryPoolSize("FlagItem", 1)
    
    SetSpawnDelay(10.0, 0.25)
    ReadDataFile("dc:CO3\\CO3.lvl", "CO3_1flag")
    SetDenseEnvironment("false")




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
	OpenAudioStream("dc:Sound\\co3.lvl",  "co3_stm")
	OpenAudioStream("dc:Sound\\co3.lvl",  "co3_stm")
	OpenAudioStream("dc:Sound\\co3.lvl",  "co3_stm")
	OpenAudioStream("dc:Sound\\co3.lvl",  "co3_stm")
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
    --SetSoundEffect("BirdScatter",             "birdsFlySeq1")
    --SetSoundEffect("WeaponUnableSelect",      "com_weap_inf_weaponchange_null")
    --SetSoundEffect("WeaponModeUnableSelect",  "com_weap_inf_modechange_null")
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
end

