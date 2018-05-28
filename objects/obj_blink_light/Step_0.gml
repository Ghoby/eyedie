/// @description Check time and blink

if (elapsed_time > blink_micros)
{
	visible = !visible;
	elapsed_time = 0;
}
else
{
	elapsed_time += delta_time;	
}