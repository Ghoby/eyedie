/// @description Checks Music To Play

if (!is_undefined(global.music_map[? room]))
{
	music = global.music_map[? room];
	
	if (!audio_is_playing(music))
	{
		audio_stop_all();
		audio_play_sound(music, 900, true);
	}
	
	if (!is_undefined(global.ambient_sound_map[? room]))
	{
		sound = global.ambient_sound_map[? room];
		audio_play_sound(sound, 1000, true);
	}
}