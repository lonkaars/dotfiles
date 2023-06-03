_G.auto = false

function copy()
	local sub = mp.get_property("sub-text")
	if sub then
		os.execute("echo '" .. sub:gsub('\'', '\'\\\'\'') .. "' | xclip -selection clipboard -i")
	end
end

function autocopy()
	if _G.auto == false then return end
	copy()
end

function toggle_autocopy()
	_G.auto = not _G.auto
	mp.osd_message("autocopy " .. (_G.auto and "on" or "off"))
end

mp.add_key_binding(nil, "copy", copy)

mp.observe_property("sub-text", "string", autocopy)
mp.add_key_binding(nil, "auto", toggle_autocopy)

