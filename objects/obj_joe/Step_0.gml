/// @description Walking Script
if(global.itemPause == false && obj_journal.journal_up == false && obj_inventory.inventory_up == false && inConversation == false) {
	
	//não permitir que a personagem passe as margens do ecrã
	room_limits = ds_map_find_value(global.room_limits_map, room);
	
	if (!is_undefined(room_limits))
	{
		x = clamp(x, room_limits[0], room_limits[1]);
	}
	
	if keyboard_check(PLAYER_RIGHT_KEY)
	{
		image_xscale = scale;
		x += PLAYER_SPEED * scale;
		image_speed = 1;
	}

	else if keyboard_check(PLAYER_LEFT_KEY)
	{
		image_xscale = scale * -1;		// turn Left
		x -= PLAYER_SPEED * scale;
		image_speed = 1;
	}
	else if keyboard_check(vk_backspace) {
		close_registry();
	}
	
	else
	{
		image_speed = 0;
		image_index = PLAYER_ANIM_IDLE_IDX;
	}
}