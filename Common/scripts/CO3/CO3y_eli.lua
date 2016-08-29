--
-- Copyright (c) 2005 Pandemic Studios, LLC. All rights reserved.
-- BF3: Coruscant - Hero Assault Mode


ScriptCB_DoFile("setup_teams")
ScriptCB_DoFile("ObjectiveTDM")

---------------------------------------------------------------------------
-- ScriptPostLoad
---------------------------------------------------------------------------
function ScriptPostLoad()


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
--	if not ScriptCB_InMultiplayer() then
--	SetUberMode(1);
--	end
    AddAIGoal(1, "Deathmatch", 100)
    AddAIGoal(2, "Deathmatch", 100)
	SetAIDifficulty(2 , 2 )
end

---------------------------------------------------------------------------
-- ScriptInit
---------------------------------------------------------------------------
function ScriptInit()
    StealArtistHeap(1536*1024)
    -- Designers, these two lines *MUST* be first!
    SetPS2ModelMemory(2097152 + 65536 * 8)
    
	ReadDataFile("dc:SIDE\\fpanimset.lvl")
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
	
    SetMemoryPoolSize ("ClothData",20)
    SetMemoryPoolSize ("Combo",70)              -- should be ~ 2x number of jedi classes
    SetMemoryPoolSize ("Combo::State",850)      -- should be ~12x #Combo
    SetMemoryPoolSize ("Combo::Transition",850) -- should be a bit bigger than #Combo::State
    SetMemoryPoolSize ("Combo::Condition",850)  -- should be a bit bigger than #Combo::State
    SetMemoryPoolSize ("Combo::Attack",750)     -- should be ~8-12x #Combo
    SetMemoryPoolSize ("Combo::DamageSample",8000)  -- should be ~8-12x #Combo::Attack
    SetMemoryPoolSize ("Combo::Deflect",140)     -- should be ~1x #combo       -- should be ~1x #combo
	
    ReadDataFile("dc:Sound\\co3.lvl")
    ReadDataFile("sound\\tat.lvl;tat2gcw")
	
		--The following TWO .lvl files *have to* be read FIRST in order to load additional, soldier weapons; or the game would crash while loading!!!
		
    	ReadDataFile("dc:SIDE\\Republic.lvl",
		"republic_inf_weapons")
		
		ReadDataFile("dc:SIDE\\cis.lvl",
		"cis_inf_weapons")

		----------------------------------------------------------------
		----------------------------------------------------------------
		
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
		"heroes_alliance_kota",
		"heroes_alliance_luke_jedi",
		"heroes_alliance_obiwan",
		"heroes_alliance_x2",
		"heroes_alliance_chewbacca",
		"heroes_empire_boba",
		"heroes_empire_vader",
		"heroes_empire_emperor",
		"heroes_empire_juno",
		"heroes_empire_starkiller",
		"heroes_empire_botha",
		"heroes_empire_ig88",
		"heroes_empire_bossk",
		"heroes_empire_x1",
		"heroes_republic_yoda")
	
		ReadDataFile("dc:SIDE\\turrets.lvl",
		"turrets_ground_turret",
		"turrets_anti_air")

        
     SetupTeams{
        hero = {
            team = ALL,
            units = 32,
                reinforcements = -1,
                soldier = { "heroes_alliance_hansolo",	1,4},
                assault = { "heroes_alliance_chewbacca",   1,4},
                engineer= { "heroes_alliance_leia",   1,4},
                sniper  = { "heroes_alliance_luke_jedi",  1,4},
                officer = {	"heroes_alliance_lando",   1,4},
                special = { "heroes_alliance_kota",   1,4},  
			
        },
    }   

	AddUnitClass(ALL,"heroes_alliance_x2",1,4)
	AddUnitClass(ALL,"heroes_republic_obiwan",1,4)
	AddUnitClass(ALL,"heroes_republic_yoda",1,4)
	
    SetupTeams{
        villain = {
            team = IMP,
            units = 32,
            reinforcements = -1,
                soldier = { "heroes_empire_boba",  1,4},
                assault = { "heroes_empire_vader",1,4},
                engineer= { "heroes_empire_emperor", 1,4},
                sniper  = { "heroes_empire_starkiller", 1,4},
                officer = { "heroes_empire_juno",    1,4},
                special = { "heroes_empire_botha", 1,4},

        },
    }   
	
	AddUnitClass(IMP,"heroes_empire_ig88",1,4)
	AddUnitClass(IMP,"heroes_empire_bossk",1,4)
	AddUnitClass(IMP,"heroes_empire_x1",1,4)


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
	SetMemoryPoolSize("EntityFlyer", 5) -- to account for 5 chewbaccas
    SetMemoryPoolSize("EntityLight", 80, 80) -- stupid trickery to actually set lights to 80
    SetMemoryPoolSize("EntityPortableTurret", 0) -- nobody has autoturrets AFAIK - MZ
    SetMemoryPoolSize("EntitySoundStream", 12)
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

    --OpenAudioStream("dc:sound\\co3.lvl", "cw_hero_vo_slow")	
    
		
    OpenAudioStream("sound\\global.lvl",  "gcw_music")
    OpenAudioStream("dc:Sound\\co3.lvl",  "co3_stm")
	OpenAudioStream("dc:Sound\\co3.lvl",  "co3_stm")


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