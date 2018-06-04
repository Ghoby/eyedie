/// @description Bloody Knife interaction

event_inherited();
if( place_meeting(x, y, obj_joe) && global.is_eye_on == true) {
	ui_icon.visible = place_meeting(x, y, obj_joe);
	ui_icon.sprite_index = spr_e_key_talk;
	if(keyboard_check_pressed(ACTION_KEY)) {
		ui_icon.visible = false;
	}
}
else {
	ui_icon.visible = false;
}