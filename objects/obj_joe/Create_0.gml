/// @description Joe Init
scale = image_xscale
joe_journal_id = instance_create_depth(0, 0, UI_DEPTH - 10, obj_journal);
joe_inventory_id = instance_create_depth(0, 0, UI_DEPTH - 10, obj_inventory);
inConversation = false; 
isTurnToTalk = false;
myName = "You";
image_speed = 0;		// Animation Stopped
image_index = 12;

if (global.cameFromAlley == true && global.goingToCity == true) {
	x = 510;
	global.cameFromAlley = false;
	global.goingToCity = false;
}
if (global.cameFromBar == true && global.goingToCity == true) {
	x = 955;
	global.cameFromBar = false;
	global.goingToCity = false;
}

if (ds_map_exists(global.position_map, room))
{
	x = global.position_map[? room];	
}

cyber_eye_effect = instance_create_depth(0, 0, EFFECT_DEPTH, obj_effect_eye);
screen_effect = instance_create_depth(0, 0, EFFECT_DEPTH, obj_effect_screen);