function copy_sub()
	sub = mp.get_property("sub-text", "string")
	if sub and sub ~= '' then
		os.execute("echo '" .. sub:gsub('\'', '\'\\\'\'') .. "' | xclip -selection clipboard -i")
	end
end

mp.add_key_binding(nil, "copy", copy_sub)

