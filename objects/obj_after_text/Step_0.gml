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
		audio_stop_all();
		room_goto(room_city);	
	}
}