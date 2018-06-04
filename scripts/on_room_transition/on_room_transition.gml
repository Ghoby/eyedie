/// @description Called by room trigger when goes from one room to another

/// @param source		Source room
/// @param destination	Destination room.

// ATENTION: This is called imediately before room_goto.
var source = argument0;
var destination = argument1;

// Save Position
global.position_map[? source] = instance_find(obj_joe, 0).x;

if (source == room_alley2 and destination == room_apartment_room25)
{
	global.position_map[? destination] = ALLEY_TO_ROOM;
}
else if (source == room_apartment_lobby and destination == room_city2)
{
	global.position_map[? destination] = LOBBY_TO_CITY;	
}

// TODO: DELEGATED BEHAVIOUR HERE
