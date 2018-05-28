/// @description Dialogue Creation

text = " ";
//scrobble through npc's dialogue
page = 0;
line = 0;
//scrobble through Joe's dialogue 
joePage = 0;
joeLine = 1;
creator = noone;
name = noone;

//bool that says if it's joe's turn to speak
joeDialogueTurn = false;

//spacing between  and textbox
xBuffer = 10; 
yBuffer = 10;

xNameBuffer = 10; 
yNameBuffer = 5;

textBoxCoordX = 2;
textBoxCoordY = view_hport[view_current] - 400;

charCount = 0;
boxWidth = sprite_get_width(spr_box); 
boxHeight = sprite_get_height(spr_box); 
stringHeight = string_height(text); // distance between characters in text
