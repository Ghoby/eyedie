/// @description Jodi dialog interaction

event_inherited();

if(obj_joe.inConversation) {
	scr_dialogue_jodi();
}

if (!jodi_animating)
{
	if (jodi_idle_count < jodi_idle_target)
	{
		jodi_idle_count++;	
	}
	else
	{
		image_speed = 1;
		jodi_animating = true;
		jodi_idle_count = 0;
	}
}