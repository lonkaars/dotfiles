function on_start_file()
	os.execute("scene scene.aux_eiga_moodo");
end

mp.register_event("start-file", on_start_file)
