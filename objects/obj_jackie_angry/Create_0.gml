/// @description Insert description here
// You can write your code in this editor
event_inherited();

journalText = "Jackie confronted me because of what I did to Jodi... But there was no other way to make her talk... Was there?";
myName = "Jackie";
myNameColor = make_color_rgb(162, 198, 255);
salutation = "Get out of my face, you bastard!";
myNameColor = c_aqua;

//first time meeting dialogue (before knowing joe)
myDialogue[0, 0] = "What the fuck did you do?";
myDialogue[0, 1] = "I could here you screaming with Jodi!";
myDialogue[0, 2] = "She has suffered enough times in her life!";
myDialogue[0, 3] = "The last thing she needs an upper-district asshole threatning the thing she treasures most!";
myDialogue[0, 4] = "...";
myDialogue[0, 5] = "Get the hell outta my face...";
myDialogue[0, 6] = "NOW!!!!";

ui_icon = instance_create_depth(x, y + UI_ICON_NPC_Y - 60, UI_DEPTH, obj_ui_interact);