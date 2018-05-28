/// @description

if (walked < target) 
{
		image_xscale += scale_speed;
		image_yscale += scale_speed;
		walked += scale_speed;
}
else if (image_alpha > 0)
{
	global.s3_ballon_animated = true;			// Start Stranger
	
	image_alpha -= opacity_speed;
}