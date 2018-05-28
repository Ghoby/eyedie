/// @description Called by room trigger when goes from one room to another

/// @param source		Source room
/// @param destination	Destination room.

// ATENTION: This is called imediately before room_goto.
var source = argument0;
var destination = argument1;

// Save Position
global.position_map[? source] = instance_find(obj_joe, 0).x;

// TODO: DELEGATED BEHAVIOUR HERE
