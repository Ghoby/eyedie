/// @description 

if (walked < target) 
{
		x -= scroll_speed;
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
		room_goto(room_scene3);	
	}
}