--[[
Script created by me mostly for FPS game. Use it how you want, but I'm not responsible for any bans you may encounter...
Why? Because I hated how in order to enable turbo click with settings provided by the software you need to hold down 
a button other than left mouse click
--]]

toggle = false
function OnEvent(event, arg)
	-- Allow (script) detection of left mouse click
	EnablePrimaryMouseButtonEvents(true);

	-- Debugging purposes, you may need to uncomment to see (arg) value is of the button you want to assign the toggle to.
	--OutputLogMessage("event = %s, arg = %s\n", event, arg)

  -- Enable toggle, currently assigned to the thumb-tip button on G502
	if event == "MOUSE_BUTTON_RELEASED" and arg == 6 then
		toggle = not toggle
		OutputLogMessage("Turbo mode enabled: %s\n", tostring(toggle))
	end

	if toggle then
		if event == "MOUSE_BUTTON_PRESSED" and arg == 1 then
			PlayMacro("Turbo");
		end
		if event == "MOUSE_BUTTON_RELEASED" and arg == 1 then
			AbortMacro();
		end
	end

end
