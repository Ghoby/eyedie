/// @description Insert description here
// You can write your code in this editor
event_inherited();

journalText = "In the alley where her body was dumped, a hologram of Laura appeared and... she talked to me. I just froze.... Couldn't even blink...";
myName = "Laura";

myNameColor = make_color_rgb(162, 198, 255);

//first time meeting dialogue (before knowing joe)
myDialogue[0, 0] = "What are you doing Joe?";
myDialogue[0, 1] = "Why are you here?";
myDialogue[0, 2] = "This isn't you...";
myDialogue[0, 3] = "You're no private detective, or anything of the sort...";
myDialogue[0, 4] = "You could never find your car keys... And you think you can find the one who killed me...";
myDialogue[0, 5] = "Please...";
myDialogue[0, 6] = "Go home. Get some rest.";
myDialogue[0, 7] = "All of this is pointless...";

visible = false;
image_alpha = 0;
laura_animating = false;
laura_idle_count = 0;
laura_idle_target = 100;

ui_icon = instance_create_depth(x, y + UI_ICON_NPC_Y - 60, UI_DEPTH, obj_ui_interact);