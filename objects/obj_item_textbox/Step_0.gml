/// @description Actions in item info
event_inherited();
if (keyboard_check_pressed(vk_space)) {
	global.itemPause = false;
	destroyFlag = true;
}
	