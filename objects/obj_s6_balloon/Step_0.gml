/// @description

if (walked < target) 
{
		image_xscale += scale_speed;
		image_yscale += scale_speed;
		walked += scale_speed;
}
else if (image_alpha > 0)
{
	image_alpha -= opacity_speed;
}
else
{
	room_goto(room_after_text);
}