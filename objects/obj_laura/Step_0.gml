/// @description Insert description here
// You can write your code in this editor
event_inherited();

if(global.lauraToAppearAux == false && global.cupholderPickUp == true) {
	visible = true;
	global.lauraToAppear = true;
	global.lauraToAppearAux = true;
}

if (visible == true && global.lauraToAppear == true) {
	if(image_alpha < 0.75) {
		image_alpha += 0.01;
	}
} else {
	if(image_alpha > 0.0) {
		image_alpha -= 0.01;
	}
	if(image_alpha == 0.0) {
		visible = false;
		
	}
}

if(obj_joe.inConversation) {
	scr_dialogue_laura();
}

if (!laura_animating)
{
	if (laura_idle_count < laura_idle_target)
	{
		laura_idle_count++;	
	}
	else
	{
		image_speed = 1;
		laura_animating = true;
		laura_idle_count = 0;
	}
}