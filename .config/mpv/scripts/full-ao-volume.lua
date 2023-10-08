-- make sure AO (pulseaudio/pipewire) output is at 100%
mp.register_event("audio-reconfig", function ()
	if mp.get_property("ao-volume") ~= 100 then
		mp.set_property_number("ao-volume", 100)
	end
end)

