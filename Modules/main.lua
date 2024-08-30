local ui = {}

function ui.text_transition(object, text, secs, callback)
	if object and text and secs then
		if object:IsA("GuiObject") and typeof(text) == "string" and tonumber(secs) ~= nil then
			object.Text = ""
			for i = 1, #text do
				wait(secs)
				object.Text = object.Text .. string.sub(text, i, i)
			end
			if callback then
				callback()
			end
		elseif typeof(text) == "number" then
			local txt = tostring(text)
			object.Text = ""
			for i = 1, #txt do
				wait(secs)
				object.Text = object.Text .. i
			end
			if callback then
				callback()
			end
		else
			warn("Invalid parameters for text_transition function.")
		end
	else
		warn("Invalid parameters for text_transition function.")
	end
end

--[[

	For numbers:
	
	text_transition(textlabel, 23432, 0.05)
	
	function name,  object,   value,   seconds
	
	For strings:
	
	text_transition(textlabel, "Hello, world!", 0.05)
	
	function name,  object,      text,          seconds
	
	With callback:
	
	text_transition(textlabel, "Hello, world!", 0.05, function()
		print("Done!")
	end)
	
	function name, object,      text,         seconds, callback

]]

return ui
