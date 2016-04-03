---------------------------------------------------------------------
-- script to add bf3 legal screen to ifs_legal by Anakin
---------------------------------------------------------------------
print("bf3_scripts.ifs_bf3_legal: entered")


-- make sure that the function we are going to manipulate exist
if ScriptCB_DoFile then
	print("bf3_scripts.ifs_bf3_legal: Taking control of ScriptCB_DoFile()...")
	
	-- make sure our backup variable is not used by someone else.
	if bf3_ScriptCB_DoFile then
		print("bf3_scripts.ifs_bf3_legal: Warning: Someone else is using our bf3_ScriptCB_DoFile variable!")
		print("bf3_scripts.ifs_bf3_legal: exited")
		return
	end
	
	-- backup original function
	bf3_ScriptCB_DoFile = ScriptCB_DoFile
	
	-- redefine function
	ScriptCB_DoFile = function(name,...)

		-- execute original function, but do not leave
		retValue = bf3_ScriptCB_DoFile(name, unpack(arg))
		
		-- after ifs_legal was executed..
		if name == "ifs_legal" then
			print("bf3_scripts.ifs_bf3_legal.ScriptCB_DoFile: insert bf3 legal image")
			-- .. insert our texture
			gLegalScreenList[table.getn(gLegalScreenList) + 1] = {texture = "bf3_legal", time = 3, bSkippable = 1, }
		end
		
		-- now we can leave
		return retValue
	end
else
	print("bf3_scripts.ifs_bf3_legal: No ScriptCB_DoFile to take over...")
end



print("bf3_scripts.ifs_bf3_legal: exited")