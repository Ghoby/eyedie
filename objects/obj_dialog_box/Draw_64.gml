/// @description Dialogue Textbox

//draw textbox

// Draw Outline
ext_draw_rect_color(textBox_outline_x, textBox_outline_y, 
	textBox_outline_x2, textBox_outline_y2, UI_TEXTBOX_OUTLINE_COLOR, true);

// Draw rectangle
ext_draw_rect_color(textBox_x, textBox_y, textBox_x2, textBox_y2, 
	UI_TEXTBOX_COLOR, false);

//draw dialogue
draw_set_font(Aldrich);

if(joeDialogueTurn == false) {
	scr_draw_npc_dialogue();
} else {
	scr_draw_joe_dialogue();
}


