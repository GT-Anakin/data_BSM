---------------------------------------------------------------------
-- custom_gc_1 script to add ifscreen before ifs_legal by Anakin
---------------------------------------------------------------------
print("custom_gc_1: BF3 GC Entered")

-- create the custom ifscreen
ScriptCB_DoFile("ifs_bf3Splash")

-- make sure that the function we are going to manipulate exist
if ScriptCB_DoFile then
	print("custom_gc_1: Taking control of ScriptCB_DoFile()...")
	
	-- make sure our backup variable is not used by someone else.
	if gc1_ScriptCB_DoFile then
		print("custom_gc_1: Warning: Someone else is using our gc1_ScriptCB_DoFile variable!")
		print("custom_gc_1: Exited")
		return
	end
	
	-- backup original function
	gc1_ScriptCB_DoFile = ScriptCB_DoFile
	
	-- redefine function
	ScriptCB_DoFile = function(name,...)

		-- execute original function, but do not leave
		retValue = gc1_ScriptCB_DoFile(name, unpack(arg))
		
		-- if we just executed ifs_movietrans
		-- that means that ifs_movietrans_PushScreen has just been defined,
		-- so we needn't check if that function exist
		-- (ok maybe someone else will redefine ifs_movietrans and remove ifs_movietrans_PushScreen but that's not my problem now)
		if name == "ifs_movietrans" then

			-- make sure our backup variable is not used by someone else.
			if gc1_ifs_movietrans_PushScreen then
				print("custom_gc_1: Warning: Someone else is using our gc1_ifs_movietrans_PushScreen variable!")
				print("custom_gc_1: Exited")
				return
			end
			
			-- backup original function
			gc1_ifs_movietrans_PushScreen = ifs_movietrans_PushScreen
			
			-- redefine function
			ifs_movietrans_PushScreen = function (screen,...)
				
				-- if we push to ifs_legal
				if screen == ifs_legal then
					--if gLegalScreenList then
					--	gLegalScreenList[table.getn(gLegalScreenList) + 1] = {texture = "bf3_legal", time = 3, bSkippable = 1, }
					--end
					-- push to ifs_bf3legal first
					ifs_movietrans_PushScreen(ifs_bf3legal)
				end
				
				-- execute original function
				return gc1_ifs_movietrans_PushScreen(screen,unpack(arg))
			end
		end
		
		-- now we can leave
		return retValue
	end
else
	print("custom_gc_1: No ScriptCB_DoFile to take over...")
	print("custom_gc_1: Exited")
end


print("custom_gc_1: Exited")