/// @description Trigger if in collision with player

if (place_meeting(x, y, obj_joe))
{
	on_room_transition(room, target_room);
	room_goto(target_room);
}

