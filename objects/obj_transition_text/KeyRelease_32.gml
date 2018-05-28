/// @description

room_goto(room_lynx_entrance);
audio_stop_sound(obj_Music.currentMusic);
obj_Music.currentMusic = audio_play_sound(level2Music, 1000, true);