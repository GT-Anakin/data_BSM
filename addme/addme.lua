--Search through the missionlist to find a map that matches mapName,
--then insert the new flags into said entry.
--Use this when you know the map already exists, but this content patch is just
--adding new gamemodes (otherwise you should just add whole new entries to the missionlist)
function AddNewGameModes(missionList, mapName, newFlags)
	for i, mission in missionList do
		if mission.mapluafile == mapName then
			for flag, value in pairs(newFlags) do
				mission[flag] = value
			end
		end
	end
end


--insert totally new maps here:
local sp_n = 0
local mp_n = 0
sp_n = table.getn(sp_missionselect_listbox_contents)

sp_missionselect_listbox_contents[sp_n+1] = { red = 255, 
blue = 255, 
green = 255, 
isModLevel = 1, 
mapluafile = "CO3%s_%s", 
era_x = 1, 
era_y = 1, 
mode_con_x = 1, 
mode_eli_y = 1, 
mode_eli_x = 1, 
mode_ctf_x = 1, 
mode_1flag_x = 1, 
mode_tdm_x = 1, 
mode_space_x = 1,
change = { mode_con = { name="Supremacy", about="Supremacy The ultimate battle between two powerful sides. Defend and capture command posts, eliminate your enemies reinforcements and destroy their fleet." },  
mode_space = { name="Fighter Squadron", about="Fighter Squadron The first team who first archives a certain number of points wins the battle in space." }, 
era_x = { name="BF3: Clone Wars" },
era_y = { name="BF3: Galactic Civil War" },
}, 
}



mp_n = table.getn(mp_missionselect_listbox_contents)
mp_missionselect_listbox_contents[mp_n+1] = sp_missionselect_listbox_contents[sp_n+1]

AddDownloadableContent("CO3","CO3x_con",4)
AddDownloadableContent("CO3","CO3y_eli",4)
AddDownloadableContent("CO3","CO3x_eli",4)
AddDownloadableContent("CO3","CO3x_ctf",4)
AddDownloadableContent("CO3","CO3x_1flag",4)
AddDownloadableContent("CO3","CO3x_tdm",4)
AddDownloadableContent("CO3","CO3x_space",4)

-- all done
newEntry = nil
n = nil

-- Now load our core.lvl into the shell to add our localize keys
ReadDataFile("..\\..\\addon\\CO3\\data\\_LVL_PC\\core.lvl")
