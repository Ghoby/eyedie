/// @description 

if (walked < target) 
{
		y -= scroll_speed;
		walked += scroll_speed;
}
else
{
	if (stalled < stall_target)
	{
		stalled++;	
	}
	else
	{
		room_goto(room_scene_final);	
	}
}