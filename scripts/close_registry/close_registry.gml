write_to_registry("No of times the eye was activated: " + string(global.EyeCounter));
write_to_registry("Total time the eye was activated: " + string(global.EyeTime/1000000) + "s");
file_text_close(global.file);
game_end();