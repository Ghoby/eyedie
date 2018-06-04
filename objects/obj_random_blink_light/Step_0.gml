/// @description Updates state


if (visible)
{
	if (elapsed_time > micros_on)
	{
		rand = random(1)
		
		visible = !visible;
		elapsed_time = 0;
		micros_on = random(max_micros_on);
	}
}
else
{
	if (elapsed_time > micros_off) 
	{
		rand = random(1)
	
		visible = !visible;
		elapsed_time = 0;
		micros_off = random(max_micros_off);
	}
}

elapsed_time += delta_time;