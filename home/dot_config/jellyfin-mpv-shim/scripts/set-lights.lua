function on_start_file()
	os.execute("curl -X POST \"$HASS_SERVER/api/webhook/movie\"");
end

mp.register_event("start-file", on_start_file)

