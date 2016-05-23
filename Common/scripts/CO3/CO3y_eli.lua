--
-- Copyright (c) 2005 Pandemic Studios, LLC. All rights reserved.
-- BF3: Coruscant - Hero Assault Mode


ScriptCB_DoFile("setup_teams")
ScriptCB_DoFile("ObjectiveTDM")

---------------------------------------------------------------------------
-- ScriptPostLoad
---------------------------------------------------------------------------
function ScriptPostLoad()

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

--AllowAISpawn(1, false) --Both commands are for debug purposes
--AllowAISpawn(2, false)

	EnableSPHeroRules()
 	-- This is the actual objective setup
	TDM = ObjectiveTDM:New{teamATT = 1, teamDEF = 2, 
						multiplayerScoreLimit = 100,
						textATT = "game.modes.tdm",
						textDEF = "game.modes.tdm2", multiplayerRules = true, isCelebrityDeathmatch = true}
	TDM:Start()

	SetMapNorthAngle(180, 1)
	SetUberMode(1);
    AddAIGoal(1, "Deathmatch", 100)
    AddAIGoal(2, "Deathmatch", 100)
end

---------------------------------------------------------------------------
-- ScriptInit
---------------------------------------------------------------------------
function ScriptInit()
    StealArtistHeap(1536*1024)
    -- Designers, these two lines *MUST* be first!
    SetPS2ModelMemory(2097152 + 65536 * 8)
    
    ReadDataFile("dc:ingame.lvl")
    ReadDataFile("ingame.lvl")

	ALL = 1
	IMP = 2
	--  These variables do not change
	ATT = 1
	DEF = 2

	SetMaxFlyHeight(0)
    SetMaxPlayerFlyHeight (0)
	SetMinFlyHeight(-550)
    SetMinPlayerFlyHeight (-550)
	SetGroundFlyerMap(1)
	
  --[[  SetMemoryPoolSize ("ClothData",20)
    SetMemoryPoolSize ("Combo",70)              -- should be ~ 2x number of jedi classes
    SetMemoryPoolSize ("Combo::State",850)      -- should be ~12x #Combo
    SetMemoryPoolSize ("Combo::Transition",850) -- should be a bit bigger than #Combo::State
    SetMemoryPoolSize ("Combo::Condition",850)  -- should be a bit bigger than #Combo::State
    SetMemoryPoolSize ("Combo::Attack",750)     -- should be ~8-12x #Combo
    SetMemoryPoolSize ("Combo::DamageSample",8000)  -- should be ~8-12x #Combo::Attack
    SetMemoryPoolSize ("Combo::Deflect",140)     -- should be ~1x #combo       -- should be ~1x #combo
	]]
	SetMemoryPoolSize ("ClothData",20)
    SetMemoryPoolSize ("Combo",50)              -- should be ~ 2x number of jedi classes
    SetMemoryPoolSize ("Combo::State",650)      -- should be ~12x #Combo
    SetMemoryPoolSize ("Combo::Transition",650) -- should be a bit bigger than #Combo::State
    SetMemoryPoolSize ("Combo::Condition",650)  -- should be a bit bigger than #Combo::State
    SetMemoryPoolSize ("Combo::Attack",550)     -- should be ~8-12x #Combo
    SetMemoryPoolSize ("Combo::DamageSample",6000)  -- should be ~8-12x #Combo::Attack
    SetMemoryPoolSize ("Combo::Deflect",100)     -- should be ~1x #combo  
	
    ReadDataFile("dc:Sound\\co3.lvl")
    ReadDataFile("sound\\tat.lvl;tat2gcw")
		
		ReadDataFile("dc:SIDE\\airspeeder.lvl",
		"AirSpeeder_speeder_01",
		"AirSpeeder_speeder_02",
		"AirSpeeder_speeder_03",
		"AirSpeeder_speeder_04",
		"AirSpeeder_speeder_05")
		
		ReadDataFile("dc:SIDE\\heroes.lvl",
		"heroes_alliance_hansolo",
		"heroes_alliance_lando",
		"heroes_alliance_leia",
		"heroes_empire_boba",
		"heroes_cis_jango",
		"heroes_cis_zam",
		"heroes_empire_vader")
		
		ReadDataFile("dc:SIDE\\vehicles.lvl",
		"cis_hover_stap")
		

		
		--[[ReadDataFile("dc:SIDE\\turrets.lvl",
		"turrets_ground_turret",
		"turrets_anti_air")]]
		
		
		
		------------------------------------
		
 --[[   ReadDataFile("SIDE\\all.lvl",
                "all_hero_luke_jedi",
                "all_hero_chewbacca")
                    
    ReadDataFile("SIDE\\imp.lvl",
                "imp_hero_darthvader",
                "imp_hero_emperor")
                
    ReadDataFile("SIDE\\rep.lvl",
                "rep_hero_yoda",
                "rep_hero_macewindu",
                "rep_hero_anakin",
                "rep_hero_aalya",
                "rep_hero_kiyadimundi",
                "rep_hero_obiwan")
                
    ReadDataFile("SIDE\\cis.lvl",
                "cis_hero_grievous",
                "cis_hero_darthmaul",
                "cis_hero_countdooku")]]

		--[[ReadDataFile("dc:SIDE\\turrets.lvl",
		"turrets_ground_turret",
		"turrets_anti_air")]]

		
if not ScriptCB_InMultiplayer() then
        
    SetupTeams{
        hero = {
            team = ALL,
            units = 64,
                reinforcements = -1,
                soldier = { "heroes_alliance_hansolo",1,3},
             --   assault = { "all_hero_chewbacca",   1,3},
             --   engineer= { "all_hero_luke_jedi",   1,3},
             --   sniper  = { "rep_hero_obiwan",  1,3},
             --   officer = { "rep_hero_yoda",        1,3},
             --   special = { "rep_hero_macewindu",   1,3},           
        },
    }   

    AddUnitClass(ALL,"heroes_alliance_leia",   1,3)
  --  AddUnitClass(ALL,"rep_hero_aalya",  1,3)
  --  AddUnitClass(ALL,"rep_hero_kiyadimundi",1,3)
	AddUnitClass(ALL,"heroes_alliance_lando",1,3)
	
	

    SetupTeams{
        villain = {
            team = IMP,
            units = 64,
            reinforcements = -1,
                soldier = { "heroes_empire_boba",    1,4},
                assault = { "heroes_empire_vader",1,4},
          --      engineer= { "cis_hero_darthmaul", 1,4},
                sniper  = { "heroes_cis_jango", 1,4},
         --       officer = { "cis_hero_grievous",    1,4},
         --      special = { "imp_hero_emperor", 1,4},

        },
    }   
 --   AddUnitClass(IMP, "rep_hero_anakin",1,4)
--    AddUnitClass(IMP, "cis_hero_countdooku",1,4)
		AddUnitClass(IMP, "heroes_cis_zam",1,4)

	
	else
	
	   SetupTeams{
        hero = {
            team = ALL,
            units = 32,
                reinforcements = -1,
                soldier = { "heroes_alliance_hansolo",1,3},
             --   assault = { "all_hero_chewbacca",   1,3},
             --   engineer= { "all_hero_luke_jedi",   1,3},
             --   sniper  = { "rep_hero_obiwan",  1,3},
             --   officer = { "rep_hero_yoda",        1,3},
             --   special = { "rep_hero_macewindu",   1,3},           
        },
    }   

    AddUnitClass(ALL,"heroes_alliance_leia",   1,3)
  --  AddUnitClass(ALL,"rep_hero_aalya",  1,3)
  --  AddUnitClass(ALL,"rep_hero_kiyadimundi",1,3)
	AddUnitClass(ALL,"heroes_alliance_lando",1,3)
	
	

    SetupTeams{
        villain = {
            team = IMP,
            units = 32,
            reinforcements = -1,
                soldier = { "heroes_empire_boba",    1,4},
          --      assault = { "imp_hero_darthvader",1,4},
          --      engineer= { "cis_hero_darthmaul", 1,4},
                sniper  = { "heroes_cis_jango", 1,4},
         --       officer = { "cis_hero_grievous",    1,4},
         --      special = { "imp_hero_emperor", 1,4},

        },
    }   
 --   AddUnitClass(IMP, "rep_hero_anakin",1,4)
--    AddUnitClass(IMP, "cis_hero_countdooku",1,4)
		AddUnitClass(IMP, "heroes_cis_zam",1,4)
	
	end

    --  Level Stats
    ClearWalkers()
    AddWalkerType(0, 0) -- special -> droidekas
    AddWalkerType(1, 0) -- 1x2 (1 pair of legs)
    AddWalkerType(2, 0) -- 2x2 (2 pairs of legs)
    AddWalkerType(3, 0) -- 3x2 (3 pairs of legs)
    
    local weaponCnt = 96
    SetMemoryPoolSize("Aimer", 1)
    SetMemoryPoolSize("AmmoCounter", weaponCnt)
    SetMemoryPoolSize("BaseHint", 320)
    SetMemoryPoolSize("ConnectivityGraphFollower", 23)
    SetMemoryPoolSize("EnergyBar", weaponCnt)
    SetMemoryPoolSize("EntityCloth",41)
    SetMemoryPoolSize("EntityDefenseGridTurret", 0)
    SetMemoryPoolSize("EntityDroid", 0)
	SetMemoryPoolSize("EntityFlyer", 5) -- to account for 5 chewbaccas
    SetMemoryPoolSize("EntityLight", 80, 80) -- stupid trickery to actually set lights to 80
    SetMemoryPoolSize("EntityPortableTurret", 0) -- nobody has autoturrets AFAIK - MZ
    SetMemoryPoolSize("EntitySoundStream", 16)
    SetMemoryPoolSize("EntitySoundStatic", 45)
    SetMemoryPoolSize("FLEffectObject::OffsetMatrix", 120)
    SetMemoryPoolSize("MountedTurret", 0)
    SetMemoryPoolSize("Navigator", 23)
    SetMemoryPoolSize("Obstacle", 667)
    SetMemoryPoolSize("Ordnance", 80)	-- not much ordnance going on in the level
    SetMemoryPoolSize("ParticleEmitter", 512)
    SetMemoryPoolSize("ParticleEmitterInfoData", 512)
    SetMemoryPoolSize("PathFollower", 23)
    SetMemoryPoolSize("PathNode", 128)
    SetMemoryPoolSize("ShieldEffect", 0)
    SetMemoryPoolSize("TentacleSimulator", 24)
    SetMemoryPoolSize("TreeGridStack", 290)
    SetMemoryPoolSize("UnitAgent", 23)
    SetMemoryPoolSize("UnitController", 23)
    SetMemoryPoolSize("Weapon", weaponCnt)

    SetSpawnDelay(10.0, 0.25)

    ReadDataFile("dc:CO3\\CO3.lvl", "CO3_eli")
	
    SetDenseEnvironment("false")

    --  Sound Stats
    
    ScriptCB_EnableHeroMusic(0)
    ScriptCB_EnableHeroVO(0)
    
    voiceSlow = OpenAudioStream("sound\\global.lvl", "all_unit_vo_slow")
    AudioStreamAppendSegments("sound\\global.lvl", "imp_unit_vo_slow", voiceSlow)
    AudioStreamAppendSegments("sound\\global.lvl", "global_vo_slow", voiceSlow)
    
    voiceQuick = OpenAudioStream("sound\\global.lvl",  "all_unit_vo_quick")
    AudioStreamAppendSegments("sound\\global.lvl",  "imp_unit_vo_quick", voiceQuick)    
    
    OpenAudioStream("sound\\global.lvl",  "gcw_music")
    OpenAudioStream("dc:Sound\\co3.lvl",  "co3_stm")
	OpenAudioStream("dc:Sound\\co3.lvl",  "co3_stm")
	OpenAudioStream("dc:Sound\\co3.lvl",  "co3_stm")
	OpenAudioStream("dc:Sound\\co3.lvl",  "co3_stm")
	OpenAudioStream("dc:Sound\\co3.lvl",  "co3_stm")
	OpenAudioStream("dc:Sound\\co3.lvl",  "co3_stm")
    OpenAudioStream("dc:Sound\\co3.lvl",  "co3_stm")
	OpenAudioStream("dc:Sound\\co3.lvl",  "co3_stm")

    SetBleedingVoiceOver(ALL, ALL, "all_off_com_report_us_overwhelmed", 1)
    SetBleedingVoiceOver(ALL, IMP, "all_off_com_report_enemy_losing",   1)
    SetBleedingVoiceOver(IMP, ALL, "imp_off_com_report_enemy_losing",   1)
    SetBleedingVoiceOver(IMP, IMP, "imp_off_com_report_us_overwhelmed", 1)

    SetLowReinforcementsVoiceOver(ALL, ALL, "all_off_defeat_im", .1, 1)
    SetLowReinforcementsVoiceOver(ALL, IMP, "all_off_victory_im", .1, 1)
    SetLowReinforcementsVoiceOver(IMP, IMP, "imp_off_defeat_im", .1, 1)
    SetLowReinforcementsVoiceOver(IMP, ALL, "imp_off_victory_im", .1, 1)

    SetOutOfBoundsVoiceOver(1, "Allleaving")
    SetOutOfBoundsVoiceOver(2, "Impleaving")

    SetAmbientMusic(ALL, 1.0, "gen_amb_celebDeathmatch",  0,1)
    -- SetAmbientMusic(ALL, 0.9, "all_tat_amb_middle", 1,1)
    -- SetAmbientMusic(ALL, 0.1, "all_tat_amb_end",    2,1)
    SetAmbientMusic(IMP, 1.0, "gen_amb_celebDeathmatch",  0,1)
    -- SetAmbientMusic(IMP, 0.9, "imp_tat_amb_middle", 1,1)
    -- SetAmbientMusic(IMP, 0.1, "imp_tat_amb_end",    2,1)

    SetVictoryMusic(ALL, "all_tat_amb_victory")
    SetDefeatMusic (ALL, "all_tat_amb_defeat")
    SetVictoryMusic(IMP, "imp_tat_amb_victory")
    SetDefeatMusic (IMP, "imp_tat_amb_defeat")

    SetSoundEffect("ScopeDisplayZoomIn",  "binocularzoomin")
    SetSoundEffect("ScopeDisplayZoomOut", "binocularzoomout")
    --SetSoundEffect("WeaponUnableSelect",  "com_weap_inf_weaponchange_null")
    --SetSoundEffect("WeaponModeUnableSelect",  "com_weap_inf_modechange_null")
    SetSoundEffect("SpawnDisplayUnitChange",       "shell_select_unit")
    SetSoundEffect("SpawnDisplayUnitAccept",       "shell_menu_enter")
    SetSoundEffect("SpawnDisplaySpawnPointChange", "shell_select_change")
    SetSoundEffect("SpawnDisplaySpawnPointAccept", "shell_menu_enter")
    SetSoundEffect("SpawnDisplayBack",             "shell_menu_exit")

    SetAttackingTeam(ATT)

    AddCameraShot(0.982204, -0.132888, -0.131524, -0.017795, 102.451683, -248.963608, 117.954056); --opening shot
	AddCameraShot(0.706555, -0.027765, -0.706567, -0.027766, 1.175141, -293.920898, 0.094850); --tunnel
	AddCameraShot(0.361071, 0.106505, -0.888586, 0.262105, -171.654434, -278.825104, -155.103256); --building
	AddCameraShot(0.002745, -0.000022, -0.999965, -0.007855, -67.152054, -281.399109, -55.667088); --Interior Bar
	AddCameraShot(-0.302795, 0.044057, -0.942116, -0.137081, 19.078167, -274.236206, -7.283313); --Interior Middle
	AddCameraShot(0.222218, -0.003227, -0.974889, -0.014157, 80.102913, -288.778595, 48.925350); --Bridge
	
end