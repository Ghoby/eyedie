/// @description 


x += scroll_speed;

if (global.s5_balloon_animation)
{
	if (scaled < target) 
	{
			image_yscale -= scale_speed;
			image_xscale -= scale_speed;
			scaled += scale_speed;
	}
	else
	{
		if (stalled < stall_target)
		{
			stalled++;	
		}
		else
		{
			room_goto(room_scene6);	
		}
	}
}