--
-- Copyright (c) 2005 Pandemic Studios, LLC. All rights reserved.
--

-- load the gametype script
ScriptCB_DoFile("Objective")
ScriptCB_DoFile("ObjectiveAssault")
ScriptCB_DoFile("ObjectiveSpaceAssault")
ScriptCB_DoFile("ObjectiveConquest")
ScriptCB_DoFile("setup_teams")
ScriptCB_DoFile("LinkedDestroyables")
ScriptCB_DoFile("LinkedShields") 
ScriptCB_DoFile("LinkedTurrets")
	
	--  REP Attacking (attacker is always #1)
    REP = 1;
    CIS = 2;
    --  These variables do not change
    ATT = REP;
    DEF = CIS;


function ScriptPostLoad()	  
--AllowAISpawn(1, false)
--AllowAISpawn(2, false)

--First Functions

if not ScriptCB_InMultiplayer() then

local reinfTrigger = false
local playerTeam = 0
local reinfTimer = CreateTimer("reinfTimer")
SetTimerValue("reinfTimer", 0.0)

local firstSpawn = OnCharacterSpawn(

function(character)
if IsCharacterHuman(character) then
playerTeam = GetCharacterTeam(character)
if reinfTrigger == false then
StartTimer("reinfTimer")
reinfTrigger = true
end
end
end
)

OnTimerElapse(
function(timer)
if playerTeam == 1 then

ForceHumansOntoTeam1()

PlayAnimation("cis_console")

cis_frigates_timer = CreateTimer("cis_frigates_timer")
   SetTimerValue(cis_frigates_timer, (480.0))
StartTimer(cis_frigates_timer)
   OnTimerElapse(
function(timer)
PlayAnimation("cis_frigates_arrive")

      DestroyTimer(timer)
                 end,
              cis_frigates_timer
              ) 
			  
elseif playerTeam == 2 then

ForceHumansOntoTeam1(0)

PlayAnimation("rep_console")

rep_frigates_timer = CreateTimer("rep_frigates_timer")
  -- SetTimerValue(rep_frigates_timer, (480.0))
  SetTimerValue(rep_frigates_timer, (480.0))
StartTimer(rep_frigates_timer)
   OnTimerElapse(
function(timer)
PlayAnimation("rep_frigates_arrive")

      DestroyTimer(timer)
	  
                 end,
              rep_frigates_timer
              ) 
			  
else
print("Player team is somehow 0 or undefined...")
end
end, "reinfTimer"
)
 
 end
 
   -- DisableSmallMapMiniMap()
	SetMapNorthAngle(180, 1)
	SetupTurrets()  
	SetupDestroyables()
	--SetAIDifficulty(2 , 2 )

	
--Function Properties
SetClassProperty("rep_inf_ep3_jettrooper", "AISizeType", "Soldier")
SetProperty("rep_door_reactor", "IsLocked", 1)
SetProperty("cis_door_reactor", "IsLocked", 1)

ActivateRegion(deathregion_CIS)
ActivateRegion(deathregion_REP)

SetProperty("cis_fedcruiser_crashing", "IsVisible", 0)
SetProperty("cis_fedcruiser_crashing", "CurHealth", 0)
SetProperty("cis_fedcruiser_crashing", "MaxHealth", 0)


SetProperty("rep_cap_assultship_crashing", "IsVisible", 0)
SetProperty("rep_cap_assultship_crashing", "CurHealth", 0)
SetProperty("rep_cap_assultship_crashing", "MaxHealth", 0)


--CW VICTORY DEFEAT FUNCTIONS

function victoryCheckFn(team)

  local tReactor
  if team == 1 then
    tReactor = "cis_reactor_cube"
  elseif team == 2 then
    tReactor = "rep_reactor_cube" 
  else print("No team for the reactor??")
    return
  end

  if (GetObjectTeam("cp1") == team and GetObjectTeam("cp2") == team and GetObjectTeam("cp3") == team and GetObjectTeam("cp4") == team and GetObjectTeam("cp5") == team and GetObjectTeam("cp6") == team and GetObjectTeam("cp7") == team and GetObjectTeam("cp8") == team and IsObjectAlive(tReactor) == false) then 
    
   victory = CreateTimer("victory")
   SetTimerValue(victory, (30.0))
   
   StartTimer(victory)
   ShowTimer(victory)
   OnTimerElapse(
function(timer)

MissionVictory(team)  
  
  DestroyTimer(timer)
                 end,
              victory
              ) 
  else return
  end
end


OnFinishCapture(
  function(postPtr)
    local capTeam = GetObjectTeam(GetEntityName(postPtr))
    victoryCheckFn(capTeam)
  end
)

OnObjectKill(
  function(object, killer)
    local reactorName = GetEntityName(object)
    if reactorName == "cis_reactor_cube" then
      victoryCheckFn(1)
    elseif reactorName == "rep_reactor_cube" then
      victoryCheckFn(2)
    end
  end
)


--Call for Reinforcements Republic
rep_frigates = OnObjectKill(
   function(object, killer)
      if GetEntityName(object) == "rep_comm_table_console" then
	   rep_frigates_arrive_timer = CreateTimer("rep_frigates_arrive_timer")
   SetTimerValue(rep_frigates_arrive_timer, (180.0))
StartTimer(rep_frigates_arrive_timer)
ShowTimer(rep_frigates_arrive_timer)
   OnTimerElapse(
function(timer)
PlayAnimation("rep_frigate_arrive")
ShowTimer(nil)
      DestroyTimer(timer)
                 end,
              rep_frigates_arrive_timer
              ) 
			  
      end
   end
)

--Call for Reinforcements CIS
cis_frigates = OnObjectKill(
   function(object, killer)
      if GetEntityName(object) == "cis_comm_table_console" then
	   cis_frigates_arrive_timer = CreateTimer("cis_frigates_arrive_timer")
   SetTimerValue(cis_frigates_arrive_timer, (180.0))
StartTimer(cis_frigates_arrive_timer)
ShowTimer(cis_frigates_arrive_timer)
   OnTimerElapse(
function(timer)
PlayAnimation("cis_frigate_arrive")
ShowTimer(nil)
      DestroyTimer(timer)
                 end,
              cis_frigates_arrive_timer
              ) 
			  
      end
   end
)


 --CIS Frigate
 cis_frigate = OnObjectKill(
   function(object, killer)
      if GetEntityName(object) == "cis_frigate_ext" then
	  
SetProperty("cis_frigate_ext_hallways", "CurHealth", "0")
SetProperty("cis_frigate_ext_hallways", "MaxHealth", "0")

SetProperty("cis_fri_auto_1", "CurHealth", "0")
SetProperty("cis_fri_auto_1", "MaxHealth", "0")
SetProperty("cis_fri_auto_2", "CurHealth", "0")
SetProperty("cis_fri_auto_2", "MaxHealth", "0")
SetProperty("cis_fri_auto_3", "CurHealth", "0")
SetProperty("cis_fri_auto_3", "MaxHealth", "0")
SetProperty("cis_fri_auto_4", "CurHealth", "0")
SetProperty("cis_fri_auto_4", "MaxHealth", "0")
SetProperty("cis_fri_auto_5", "CurHealth", "0")
SetProperty("cis_fri_auto_5", "MaxHealth", "0")

KillObject("cp_cis_frigate")

RemoveRegion("cis_landing_frigate")
DeactivateRegion("cis_landing_frigate")

PlayAnimation("cis_frigate_countdown")


	  
      end
   end
)

 --REP Frigate
 rep_frigate = OnObjectKill(
   function(object, killer)
      if GetEntityName(object) == "rep_frigate_ext" then
	  
SetProperty("rep_frigate_ext_hallways", "CurHealth", "0")
SetProperty("rep_frigate_ext_hallways", "MaxHealth", "0")

SetProperty("rep_fri_auto_1", "CurHealth", "0")
SetProperty("rep_fri_auto_1", "MaxHealth", "0")
SetProperty("rep_fri_auto_2", "CurHealth", "0")
SetProperty("rep_fri_auto_2", "MaxHealth", "0")
SetProperty("rep_fri_auto_3", "CurHealth", "0")
SetProperty("rep_fri_auto_3", "MaxHealth", "0")
SetProperty("rep_fri_auto_4", "CurHealth", "0")
SetProperty("rep_fri_auto_4", "MaxHealth", "0")
SetProperty("rep_fri_auto_5", "CurHealth", "0")
SetProperty("rep_fri_auto_5", "MaxHealth", "0")

KillObject("cp_rep_frigate")

RemoveRegion("rep_landing_frigate")
DeactivateRegion("rep_landing_frigate")

PlayAnimation("rep_frigate_countdown")


	  
      end
   end
)


--Function Conquest and Assault
    cp1 = CommandPost:New{name = "cp1"}
    cp2 = CommandPost:New{name = "cp2"}
    cp3 = CommandPost:New{name = "cp3"}
    cp4 = CommandPost:New{name = "cp4"}
	cp5 = CommandPost:New{name = "cp5"}
	cp6 = CommandPost:New{name = "cp6"}	
	cp7 = CommandPost:New{name = "cp7"}
	cp8 = CommandPost:New{name = "cp8"}
    
    --This sets up the actual objective.  This needs to happen after cp's are defined
    conquest = ObjectiveConquest:New{teamATT = ATT, teamDEF = DEF, 
                                     textATT = "game.modes.con", 
                                     textDEF = "game.modes.con2",
                                     multiplayerRules = true}

    --This adds the CPs to the objective.  This needs to happen after the objective is set up
    conquest:AddCommandPost(cp1)
    conquest:AddCommandPost(cp2)  
    conquest:AddCommandPost(cp3)
    conquest:AddCommandPost(cp4)
    conquest:AddCommandPost(cp5)	
	conquest:AddCommandPost(cp6)
    conquest:AddCommandPost(cp7)
    conquest:AddCommandPost(cp8)

    conquest:Start()

	
	
	SetUberMode(1);
    EnableSPHeroRules()
	EnableFlyerPath(team1_fly,1)
	EnableFlyerPath(team2_fly,1)
	AddDeathRegion("deathregion_REP")
	AddDeathRegion("deathregion_CIS")
 end
 
 function SetupDestroyables()
 

 --REPUBLIC
    --REP Door 
    Rep_Reactor_Room_DoorREPUBLIC = LinkedDestroyables:New{ objectSets = {{"rep_shield_console_1", "rep_shield_console_2"}, {"rep_door_exp_cube"}} }
    Rep_Reactor_Room_DoorREPUBLIC:Init() 
	
	--Main Reactor REPUBLIC
    Rep_Reactor_Room_DoorREPUBLIC = LinkedDestroyables:New{ objectSets = {{"rep_reactor_console_1", "rep_reactor_console_2", "rep_reactor_console_3", "rep_reactor_console_4", "rep_reactor_console_5", "rep_reactor_console_6"}, {"rep_reactor"}} }
    Rep_Reactor_Room_DoorREPUBLIC:Init() 
	
	
    --Door Function REPUBLIC
	Rep_Reactor_Room_Door_Function = OnObjectKill(
	function(object, killer)
      if GetEntityName(object) == "rep_door_exp_cube" then
	SetProperty("rep_door_reactor", "IsLocked", 0)
      end
   end
)

	--BOOM Function
Rep_Capital_Ship = OnObjectKill(
   function(object, killer)
      if GetEntityName(object) == "rep_reactor" then
	  
   rep_countdown = CreateTimer("rep_countdown")
   SetTimerValue(rep_countdown, (60.0))
   
RemoveRegion("deathregion_REP")
DeactivateRegion("deathregion_REP")

SetProperty("rep_tri_tur_3", "CurHealth", "0")
SetProperty("rep_tri_tur_3", "MaxHealth", "0")
SetProperty("rep_tri_tur_4", "CurHealth", "0")
SetProperty("rep_tri_tur_4", "MaxHealth", "0")
SetProperty("rep_tri_tur_5", "CurHealth", "0")
SetProperty("rep_tri_tur_5", "MaxHealth", "0")
SetProperty("rep_tri_tur_6", "CurHealth", "0")
SetProperty("rep_tri_tur_6", "MaxHealth", "0")
SetProperty("rep_tri_tur_7", "CurHealth", "0")
SetProperty("rep_tri_tur_7", "MaxHealth", "0")
SetProperty("rep_tri_tur_8", "CurHealth", "0")
SetProperty("rep_tri_tur_8", "MaxHealth", "0")
SetProperty("rep_tri_tur_9", "CurHealth", "0")
SetProperty("rep_tri_tur_9", "MaxHealth", "0")
SetProperty("rep_tri_tur_10", "CurHealth", "0")
SetProperty("rep_tri_tur_10", "MaxHealth", "0")
SetProperty("rep_tri_tur_11", "CurHealth", "0")
SetProperty("rep_tri_tur_11", "MaxHealth", "0")
SetProperty("rep_tri_tur_12", "CurHealth", "0")
SetProperty("rep_tri_tur_12", "MaxHealth", "0")
  
   StartTimer(rep_countdown)
   OnTimerElapse(
function(timer)

SetProperty("rep_cap_assultship_crashing", "IsVisible", 1)
SetProperty("rep_cap_assultship_crashing", "MaxHealth", 1e+37)
SetProperty("rep_cap_assultship_crashing", "CurHealth", 1e+37)



KillObject("cp_rep")

SetProperty("rep_cor_1", "CurHealth", "0")
SetProperty("rep_cor_1", "MaxHealth", "0")
SetProperty("rep_cor_2", "CurHealth", "0")
SetProperty("rep_cor_2", "MaxHealth", "0")
SetProperty("rep_cor_3", "CurHealth", "0")
SetProperty("rep_cor_3", "MaxHealth", "0")
SetProperty("rep_cor_4", "CurHealth", "0")
SetProperty("rep_cor_4", "MaxHealth", "0")
SetProperty("rep_cor_5", "CurHealth", "0")
SetProperty("rep_cor_5", "MaxHealth", "0")
SetProperty("rep_cor_6", "CurHealth", "0")
SetProperty("rep_cor_6", "MaxHealth", "0")
SetProperty("rep_cor_7", "CurHealth", "0")
SetProperty("rep_cor_7", "MaxHealth", "0")
SetProperty("rep_cor_8", "CurHealth", "0")
SetProperty("rep_cor_8", "MaxHealth", "0")
SetProperty("rep_cor_9", "CurHealth", "0")
SetProperty("rep_cor_9", "MaxHealth", "0")
SetProperty("rep_cor_10", "CurHealth", "0")
SetProperty("rep_cor_10", "MaxHealth", "0")
SetProperty("rep_cor_11", "CurHealth", "0")
SetProperty("rep_cor_11", "MaxHealth", "0")
SetProperty("rep_cor_12", "CurHealth", "0")
SetProperty("rep_cor_12", "MaxHealth", "0")
SetProperty("rep_cor_13", "CurHealth", "0")
SetProperty("rep_cor_13", "MaxHealth", "0")
SetProperty("rep_cor_14", "CurHealth", "0")
SetProperty("rep_cor_14", "MaxHealth", "0")
SetProperty("rep_cor_15", "CurHealth", "0")
SetProperty("rep_cor_15", "MaxHealth", "0")
SetProperty("rep_cor_16", "CurHealth", "0")
SetProperty("rep_cor_16", "MaxHealth", "0")
SetProperty("rep_cor_17", "CurHealth", "0")
SetProperty("rep_cor_17", "MaxHealth", "0")
SetProperty("rep_cor_18", "CurHealth", "0")
SetProperty("rep_cor_18", "MaxHealth", "0")
SetProperty("rep_cor_19", "CurHealth", "0")
SetProperty("rep_cor_19", "MaxHealth", "0")
SetProperty("rep_cor_20", "CurHealth", "0")
SetProperty("rep_cor_20", "MaxHealth", "0")
SetProperty("rep_cor_21", "CurHealth", "0")
SetProperty("rep_cor_21", "MaxHealth", "0")
SetProperty("rep_cor_22", "CurHealth", "0")
SetProperty("rep_cor_22", "MaxHealth", "0")
SetProperty("rep_cor_23", "CurHealth", "0")
SetProperty("rep_cor_23", "MaxHealth", "0")
SetProperty("rep_cor_24", "CurHealth", "0")
SetProperty("rep_cor_24", "MaxHealth", "0")

SetProperty("rep_reactor_room", "CurHealth", "0")
SetProperty("rep_reactor_room", "MaxHealth", "0")

SetProperty("rep_comm_room_1", "CurHealth", "0")
SetProperty("rep_comm_room_1", "MaxHealth", "0")

SetProperty("rep_comm_room_2", "CurHealth", "0")
SetProperty("rep_comm_room_2", "MaxHealth", "0")

SetProperty("rep_comm_room_3", "CurHealth", "0")
SetProperty("rep_comm_room_3", "MaxHealth", "0")

SetProperty("rep_assultship_hallway", "CurHealth", "0")
SetProperty("rep_assultship_hallway", "MaxHealth", "0")

SetProperty("rep_turret_console", "CurHealth", "0")
SetProperty("rep_turret_console", "MaxHealth", "0")

SetProperty("rep_bridge", "CurHealth", "0")
SetProperty("rep_bridge", "MaxHealth", "0")

SetProperty("rep_engines", "CurHealth", "0")
SetProperty("rep_engines", "MaxHealth", "0")

SetProperty("rep_cap_assultship1", "CurHealth", "0")
SetProperty("rep_cap_assultship1", "MaxHealth", "0")
SetProperty("rep_cap_assultship2", "CurHealth", "0")
SetProperty("rep_cap_assultship2", "MaxHealth", "0")
SetProperty("rep_cap_assultship3", "CurHealth", "0")
SetProperty("rep_cap_assultship3", "MaxHealth", "0")
SetProperty("rep_cap_assultship4", "CurHealth", "0")
SetProperty("rep_cap_assultship4", "MaxHealth", "0")

PlayAnimation("rep_crashing")
PlayAnimation("republic_countdown_1")
PlayAnimation("republic_countdown_2")

RemoveRegion("rep_landing")
DeactivateRegion("rep_landing")

SetProperty("rep_reactor_cube", "CurHealth", "0")
SetProperty("rep_reactor_cube", "MaxHealth", "0")

SetReinforcementCount(ATT, 150)

      DestroyTimer(timer)
                 end,
              rep_countdown
              ) 
		 

      end
   end
)

--CIS
    --CIS Door 
    CIS_Reactor_Room_DoorCIS = LinkedDestroyables:New{ objectSets = {{"cis_shield_console_1", "cis_shield_console_2"}, {"cis_door_exp_cube"}} }
    CIS_Reactor_Room_DoorCIS:Init() 
	
	--Main Reactor CIS
    CIS_Reactor_Room_DoorCIS = LinkedDestroyables:New{ objectSets = {{"cis_reactor_console_1", "cis_reactor_console_2", "cis_reactor_console_3", "cis_reactor_console_4", "cis_reactor_console_5", "cis_reactor_console_6"}, {"cis_reactor"}} }
    CIS_Reactor_Room_DoorCIS:Init() 
	
	
    --Door Function CIS
	CIS_Reactor_Room_Door_Function = OnObjectKill(
	function(object, killer)
      if GetEntityName(object) == "cis_door_exp_cube" then
	SetProperty("cis_door_reactor", "IsLocked", 0)
      end
   end
)

	--BOOM Function
CIS_Capital_Ship = OnObjectKill(
   function(object, killer)
      if GetEntityName(object) == "cis_reactor" then
	  
   cis_countdown = CreateTimer("rep_countdown")
   SetTimerValue(cis_countdown, (60.0))
   
RemoveRegion("deathregion_CIS")
DeactivateRegion("deathregion_CIS")

SetProperty("cis_tri_tur_3", "CurHealth", "0")
SetProperty("cis_tri_tur_3", "MaxHealth", "0")
SetProperty("cis_tri_tur_4", "CurHealth", "0")
SetProperty("cis_tri_tur_4", "MaxHealth", "0")
SetProperty("cis_tri_tur_5", "CurHealth", "0")
SetProperty("cis_tri_tur_5", "MaxHealth", "0")
SetProperty("cis_tri_tur_6", "CurHealth", "0")
SetProperty("cis_tri_tur_6", "MaxHealth", "0")
SetProperty("cis_tri_tur_7", "CurHealth", "0")
SetProperty("cis_tri_tur_7", "MaxHealth", "0")
SetProperty("cis_tri_tur_8", "CurHealth", "0")
SetProperty("cis_tri_tur_8", "MaxHealth", "0")
SetProperty("cis_tri_tur_9", "CurHealth", "0")
SetProperty("cis_tri_tur_9", "MaxHealth", "0")
SetProperty("cis_tri_tur_10", "CurHealth", "0")
SetProperty("cis_tri_tur_10", "MaxHealth", "0")
SetProperty("cis_tri_tur_11", "CurHealth", "0")
SetProperty("cis_tri_tur_11", "MaxHealth", "0")
SetProperty("cis_tri_tur_12", "CurHealth", "0")
SetProperty("cis_tri_tur_12", "MaxHealth", "0")

   
   StartTimer(cis_countdown)
   OnTimerElapse(
function(timer)

SetProperty("cis_fedcruiser_crashing", "IsVisible", 1)
SetProperty("cis_fedcruiser_crashing", "MaxHealth", 1e+37)
SetProperty("cis_fedcruiser_crashing", "CurHealth", 1e+37)

KillObject("cp_cis")

SetProperty("cis_cor_1", "CurHealth", "0")
SetProperty("cis_cor_1", "MaxHealth", "0")
SetProperty("cis_cor_2", "CurHealth", "0")
SetProperty("cis_cor_2", "MaxHealth", "0")
SetProperty("cis_cor_3", "CurHealth", "0")
SetProperty("cis_cor_3", "MaxHealth", "0")
SetProperty("cis_cor_4", "CurHealth", "0")
SetProperty("cis_cor_4", "MaxHealth", "0")
SetProperty("cis_cor_5", "CurHealth", "0")
SetProperty("cis_cor_5", "MaxHealth", "0")
SetProperty("cis_cor_6", "CurHealth", "0")
SetProperty("cis_cor_6", "MaxHealth", "0")
SetProperty("cis_cor_7", "CurHealth", "0")
SetProperty("cis_cor_7", "MaxHealth", "0")
SetProperty("cis_cor_8", "CurHealth", "0")
SetProperty("cis_cor_8", "MaxHealth", "0")
SetProperty("cis_cor_9", "CurHealth", "0")
SetProperty("cis_cor_9", "MaxHealth", "0")
SetProperty("cis_cor10", "CurHealth", "0")
SetProperty("cis_cor10", "MaxHealth", "0")
SetProperty("cis_cor11", "CurHealth", "0")
SetProperty("cis_cor11", "MaxHealth", "0")
SetProperty("cis_cor12", "CurHealth", "0")
SetProperty("cis_cor12", "MaxHealth", "0")
SetProperty("cis_cor13", "CurHealth", "0")
SetProperty("cis_cor13", "MaxHealth", "0")
SetProperty("cis_cor14", "CurHealth", "0")
SetProperty("cis_cor14", "MaxHealth", "0")
SetProperty("cis_cor15", "CurHealth", "0")
SetProperty("cis_cor15", "MaxHealth", "0")
SetProperty("cis_cor16", "CurHealth", "0")
SetProperty("cis_cor16", "MaxHealth", "0")
SetProperty("cis_cor17", "CurHealth", "0")
SetProperty("cis_cor17", "MaxHealth", "0")
SetProperty("cis_cor_18", "CurHealth", "0")
SetProperty("cis_cor_18", "MaxHealth", "0")
SetProperty("cis_cor_19", "CurHealth", "0")
SetProperty("cis_cor_19", "MaxHealth", "0")
SetProperty("cis_cor20", "CurHealth", "0")
SetProperty("cis_cor20", "MaxHealth", "0")
SetProperty("cis_cor21", "CurHealth", "0")
SetProperty("cis_cor21", "MaxHealth", "0")
SetProperty("cis_cor22", "CurHealth", "0")
SetProperty("cis_cor22", "MaxHealth", "0")

SetProperty("cis_ammo_1", "CurHealth", "0")
SetProperty("cis_ammo_1", "MaxHealth", "0")
SetProperty("cis_ammo_2", "CurHealth", "0")
SetProperty("cis_ammo_2", "MaxHealth", "0")
SetProperty("rep_ammo_1", "CurHealth", "0")
SetProperty("rep_ammo_1", "MaxHealth", "0")
SetProperty("rep_ammo_2", "CurHealth", "0")
SetProperty("rep_ammo_2", "MaxHealth", "0")

SetProperty("cis_health_1", "CurHealth", "0")
SetProperty("cis_health_1", "MaxHealth", "0")
SetProperty("cis_health_2", "CurHealth", "0")
SetProperty("cis_health_2", "MaxHealth", "0")
SetProperty("rep_health_1", "CurHealth", "0")
SetProperty("rep_health_1", "MaxHealth", "0")
SetProperty("rep_health_2", "CurHealth", "0")
SetProperty("rep_health_2", "MaxHealth", "0")

SetProperty("cis_reactor_room", "CurHealth", "0")
SetProperty("cis_reactor_room", "MaxHealth", "0")

SetProperty("cis_assultship_commandroom_1", "CurHealth", "0")
SetProperty("cis_assultship_commandroom_1", "MaxHealth", "0")

SetProperty("cis_assultship_commandroom_2", "CurHealth", "0")
SetProperty("cis_assultship_commandroom_2", "MaxHealth", "0")

SetProperty("cis_assultship_commandroom_3", "CurHealth", "0")
SetProperty("cis_assultship_commandroom_3", "MaxHealth", "0")

SetProperty("cis_fedcruiser_hallway", "CurHealth", "0")
SetProperty("cis_fedcruiser_hallway", "MaxHealth", "0")

SetProperty("cis_turret_console", "CurHealth", "0")
SetProperty("cis_turret_console", "MaxHealth", "0")


SetProperty("cis_bridge", "CurHealth", "0")
SetProperty("cis_bridge", "MaxHealth", "0")

SetProperty("cis_engines_1", "CurHealth", "0")
SetProperty("cis_engines_1", "MaxHealth", "0")
SetProperty("cis_engines_2", "CurHealth", "0")
SetProperty("cis_engines_2", "MaxHealth", "0")

SetProperty("cis_fly_fedcruiser1", "CurHealth", "0")
SetProperty("cis_fly_fedcruiser1", "MaxHealth", "0")
SetProperty("cis_fly_fedcruiser2", "CurHealth", "0")
SetProperty("cis_fly_fedcruiser2", "MaxHealth", "0")
SetProperty("cis_fly_fedcruiser3", "CurHealth", "0")
SetProperty("cis_fly_fedcruiser3", "MaxHealth", "0")
SetProperty("cis_fly_fedcruiser4", "CurHealth", "0")
SetProperty("cis_fly_fedcruiser4", "MaxHealth", "0")


PlayAnimation("cis_crashing")
PlayAnimation("cis_countdown_1")
PlayAnimation("cis_countdown_2")


RemoveRegion("cis_landing")
DeactivateRegion("cis_landing")

SetProperty("cis_reactor_cube", "CurHealth", "0")
SetProperty("cis_reactor_cube", "MaxHealth", "0")

SetReinforcementCount(DEF, 150)

--SetProperty("cis_fedcruiser_crashing", "IsVisible", 1)
--SetProperty("cis_fedcruiser_crashing", "MaxHealth", 1e+37)
--SetProperty("cis_fedcruiser_crashing", "CurHealth", 1e+37)

      DestroyTimer(timer)
                 end,
              cis_countdown
              ) 
		 

      end
   end
)

end

 function SetupTurrets() 

--Function Auto Turrets REPUBLIC
     turretLinkageREPUBLIC = LinkedTurrets:New{ team = REP, mainframe = "rep_turret_console", 
	turrets = {"rep_auto_tur_1", "rep_auto_tur_2", "rep_auto_tur_3", "rep_auto_tur_4", "rep_auto_tur_5", "rep_auto_tur_6", "rep_h_tur_1", "rep_h_tur_2", "rep_h_tur_3", "rep_h_tur_4" } }
    turretLinkageREPUBLIC:Init()
    
    function turretLinkageREPUBLIC:OnDisableMainframe()
        ShowMessageText("level.spa.hangar.mainframe.atk.down", CIS)
        ShowMessageText("level.spa.hangar.mainframe.def.down", REP)

        BroadcastVoiceOver( "ROSMP_obj_21", REP )
        BroadcastVoiceOver( "COSMP_obj_20", CIS )
    end
	
    function turretLinkageREPUBLIC:OnEnableMainframe()
        ShowMessageText("level.spa.hangar.mainframe.atk.up", CIS)
        ShowMessageText("level.spa.hangar.mainframe.def.up", REP)

        BroadcastVoiceOver( "ROSMP_obj_23", REP )
        BroadcastVoiceOver( "COSMP_obj_22", CIS )       
    end
	
--Function Auto Turrets CIS
     turretLinkageCIS = LinkedTurrets:New{ team = CIS, mainframe = "cis_turret_console", 
	turrets = {"cis_auto_tur_1", "cis_auto_tur_2", "cis_auto_tur_3", "cis_auto_tur_4", "cis_auto_tur_5", "cis_auto_tur_6", "cis_h_tur_1", "cis_h_tur_2" } }
    turretLinkageCIS:Init()
    
    function turretLinkageCIS:OnDisableMainframe()
        ShowMessageText("level.spa.hangar.mainframe.atk.down", REP)
        ShowMessageText("level.spa.hangar.mainframe.def.down", CIS)

        BroadcastVoiceOver( "ROSMP_obj_21", CIS )
        BroadcastVoiceOver( "COSMP_obj_20", REP )
    end
	
    function turretLinkageCIS:OnEnableMainframe()
        ShowMessageText("level.spa.hangar.mainframe.atk.up", REP)
        ShowMessageText("level.spa.hangar.mainframe.def.up", CIS)

        BroadcastVoiceOver( "ROSMP_obj_23", CIS )
        BroadcastVoiceOver( "COSMP_obj_22", REP )       
    end
	
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
    ReadDataFile("dc:ingame.lvl")
    ReadDataFile("ingame.lvl")
    
   
    --SetMaxFlyHeight(1800)
    --SetMaxPlayerFlyHeight (1800)
	SetMaxFlyHeight(2000)
    SetMaxPlayerFlyHeight (2000)
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
	
	
    	ReadDataFile("dc:Sound\\co3.lvl")
    --ReadDataFile("sound\\yav.lvl;yav1cw")
	ReadDataFile("sound\\spa.lvl;spa2cw")

		ReadDataFile("dc:SIDE\\Republic.lvl",
		"republic_inf_rifleman",
		"republic_inf_heavytrooper",
		"republic_inf_sniper",
		"republic_inf_engineer",
		"republic_inf_officer")
		
		ReadDataFile("dc:SIDE\\cis.lvl",
                    "cis_inf_rifleman",
					"cis_inf_pilot",
					"cis_inf_sniper")
			
		ReadDataFile("dc:SIDE\\vehicles.lvl",
		"republic_fly_eta2_red",
		"republic_fly_170_fighter",
		"republic_fly_vwing",
		"republic_fly_gunship",
		"cis_fly_tri_fighter",
		"cis_fly_droid_fighter",
		"cis_fly_bomber",
		"cis_fly_gunship")
		

		
		--[[ReadDataFile("dc:SIDE\\turrets.lvl",
		"turrets_ground_turret",
		"turrets_anti_air")]]
		
				ReadDataFile("SIDE\\tur.lvl",
		"tur_bldg_spa_rep_chaingun",
		"tur_bldg_spa_rep_cannon",
		"tur_bldg_spa_rep_beam",
		"tur_bldg_spa_cis_chaingun",
		"tur_bldg_spa_cis_cannon",
		"tur_bldg_spa_cis_beam",
		"tur_bldg_chaingun_roof",
        "tur_bldg_chaingun_tripod")
		
    ReadDataFile("SIDE\\rep.lvl",
                             "rep_inf_ep3_rifleman",
                             "rep_inf_ep3_rocketeer",
                             "rep_inf_ep3_engineer",
                             "rep_inf_ep3_sniper",
                             "rep_inf_ep3_officer",
                             "rep_inf_ep3_jettrooper",
                             "rep_hover_fightertank",
                             "rep_hero_anakin",
                             "rep_hover_barcspeeder",
							 "rep_fly_vwing")
							--  "rep_walk_atte",
							-- "rep_fly_arc170fighter_sc"

    ReadDataFile("SIDE\\cis.lvl",
                             "cis_inf_rocketeer",
                             "cis_inf_engineer",
                             "cis_inf_officer",
                             "cis_inf_droideka",
                             "cis_hero_darthmaul",
                             "cis_hover_aat",
							 "cis_hover_stap",
							-- "cis_walk_spider",
							 "cis_fly_droidfighter_sc",
							 "cis_fly_tridroidfighter",
							 "cis_fly_greviousfighter")
                             
                                     
                   

	SetupTeams{
		rep = {
			team = REP,
			units = 55,
			reinforcements = -1,
			soldier  = { "republic_inf_rifleman",12, 20},
			assault  = { "republic_inf_heavytrooper",5, 10},
			engineer = { "republic_inf_sniper",5, 10},
			sniper   = { "republic_inf_engineer",5, 10},
			officer = {"republic_inf_officer",5, 10},
			special = { "rep_inf_ep3_jettrooper",5, 10},
	        
		},
		
		cis = {
			team = CIS,
			units = 55,
			reinforcements = -1,
			soldier  = { "cis_inf_rifleman",12, 20},
			assault  = { "cis_inf_rocketeer",5, 10},
			engineer = { "cis_inf_engineer",5, 10},
			sniper   = { "cis_inf_sniper",5, 10},
			officer = {"cis_inf_officer",5, 10},
			special = { "cis_inf_droideka",5, 10},
		}
	}
     
    SetHeroClass(CIS, "cis_hero_darthmaul")
    SetHeroClass(REP, "rep_hero_anakin")
   

    --  Level Stats
    --  ClearWalkers()
    AddWalkerType(0, 10) -- special -> droidekas
    AddWalkerType(1, 0) -- 1x2 (1 pair of legs)
    AddWalkerType(2, 4) -- 2x2 (2 pairs of legs)
    AddWalkerType(3, 3) -- 3x2 (3 pairs of legs)
    local weaponCnt = 1024
    SetMemoryPoolSize("Aimer", 75)
    SetMemoryPoolSize("AmmoCounter", weaponCnt)
    SetMemoryPoolSize("BaseHint", 1024)
    SetMemoryPoolSize("EnergyBar", weaponCnt)
	SetMemoryPoolSize("EntityCloth", 32)
	SetMemoryPoolSize("EntityFlyer", 64)
    SetMemoryPoolSize("EntityHover", 8)
	SetMemoryPoolSize("CommandWalker", 1)
	SetMemoryPoolSize("CommandFlyer", 4)
    SetMemoryPoolSize("EntityLight", 200)
    SetMemoryPoolSize("EntitySoundStream", 12)
    SetMemoryPoolSize("EntitySoundStatic", 32)
    SetMemoryPoolSize("MountedTurret", 32)
	SetMemoryPoolSize("Navigator", 128)
    SetMemoryPoolSize("Obstacle", 1024)
	SetMemoryPoolSize("PathNode", 1024)
    SetMemoryPoolSize("SoundSpaceRegion", 64)
    SetMemoryPoolSize("TreeGridStack", 1024)
	SetMemoryPoolSize("UnitAgent", 128)
	SetMemoryPoolSize("UnitController", 128)
	SetMemoryPoolSize("EntityRemoteTerminal",20)
	SetMemoryPoolSize("Weapon", weaponCnt)
    
    SetSpawnDelay(10.0, 0.25)
	
	if ScriptCB_InMultiplayer() then
    ReadDataFile("dc:CO3\\CO3.lvl", "CO3_conquest", "CO3_CW_Ships", "CO3_CW_Ships_Turrets_MP")
    else
    ReadDataFile("dc:CO3\\CO3.lvl", "CO3_conquest", "CO3_CW_Ships", "CO3_CW_Ships_Turrets")
    end
	
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
    -- OpenAudioStream("sound\\global.lvl",  "global_vo_quick")
    -- OpenAudioStream("sound\\global.lvl",  "global_vo_slow")
   -- OpenAudioStream("sound\\yav.lvl",  "yav1")
    OpenAudioStream("dc:Sound\\co3.lvl",  "co3_stm")
	OpenAudioStream("dc:Sound\\co3.lvl",  "co3_stm")
	OpenAudioStream("dc:Sound\\co3.lvl",  "co3_stm")
	OpenAudioStream("dc:Sound\\co3.lvl",  "co3_stm")
	OpenAudioStream("dc:Sound\\co3.lvl",  "co3_stm")
	OpenAudioStream("dc:Sound\\co3.lvl",  "co3_stm")
    OpenAudioStream("dc:Sound\\co3.lvl",  "co3_stm")
	OpenAudioStream("dc:Sound\\co3.lvl",  "co3_stm")
    -- OpenAudioStream("sound\\yav.lvl",  "yav1_emt")

    SetBleedingVoiceOver(REP, REP, "rep_off_com_report_us_overwhelmed", 1)
    SetBleedingVoiceOver(REP, CIS, "rep_off_com_report_enemy_losing",   1)
    SetBleedingVoiceOver(CIS, REP, "cis_off_com_report_enemy_losing",   1)
    SetBleedingVoiceOver(CIS, CIS, "cis_off_com_report_us_overwhelmed", 1)

    SetOutOfBoundsVoiceOver(2, "cisleaving")
    SetOutOfBoundsVoiceOver(1, "repleaving")

  --[[  SetAmbientMusic(REP, 1.0, "rep_yav_amb_start",  0,1)
    SetAmbientMusic(REP, 0.8, "rep_yav_amb_middle", 1,1)
    SetAmbientMusic(REP, 0.2, "rep_yav_amb_end",    2,1)
    SetAmbientMusic(CIS, 1.0, "cis_yav_amb_start",  0,1)
    SetAmbientMusic(CIS, 0.8, "cis_yav_amb_middle", 1,1)
    SetAmbientMusic(CIS, 0.2, "cis_yav_amb_end",    2,1)]]
	
	SetAmbientMusic(REP, 1.0, "rep_spa2_amb_start",  0,1)
       SetAmbientMusic(REP, 0.99, "rep_spa2_Amb01", 1,1)
       SetAmbientMusic(REP, 0.1,"rep_spa_amb_end",    2,1)
       SetAmbientMusic(CIS, 1.0, "cis_spa_amb_start",  0,1)
       SetAmbientMusic(CIS, 0.99, "cis_spa_amb_middle", 1,1)
       SetAmbientMusic(CIS, 0.1,"cis_spa_amb_end",    2,1)

  --  SetVictoryMusic(REP, "rep_yav_amb_victory")
 --  SetDefeatMusic (REP, "rep_yav_amb_defeat")
  --  SetVictoryMusic(CIS, "cis_yav_amb_victory")
  --  SetDefeatMusic (CIS, "cis_yav_amb_defeat")
	
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


--OpeningSateliteShot
    AddCameraShot(0.908386, -0.209095, -0.352873, -0.081226, -45.922508, -19.114113, 77.022636);

	
	AddLandingRegion("landing_1")
	AddLandingRegion("landing_2")
	AddLandingRegion("landing_3")
	AddLandingRegion("landing_4")
	AddLandingRegion("landing_5")
	AddLandingRegion("rep_landing")
	AddLandingRegion("cis_landing")
	AddLandingRegion("cis_landing_frigate")
	AddLandingRegion("rep_landing_frigate")
end
