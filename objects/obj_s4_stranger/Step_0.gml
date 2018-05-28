/// @description

if (scaled < target) 
{
		y += scroll_speed;
		image_xscale += scale_speed;
		image_yscale += scale_speed;
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
		room_goto(room_scene5);	
	}
}