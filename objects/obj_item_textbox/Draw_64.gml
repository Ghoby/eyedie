/// @description Item Textbox

//draw textbox
//draw_sprite(spr_item_box, 0, textBox_x, textBox_y);

ext_draw_rect_color(textBox_outline_x, textBox_outline_y, textBox_x + UI_TEXTBOX_WIDTH + UI_TEXTBOX_OUTLINE, 
textBox_y + UI_TEXTBOX_HEIGHT + UI_TEXTBOX_OUTLINE, UI_TEXTBOX_OUTLINE_COLOR, true);

ext_draw_rect_color(textBox_x, textBox_y, textBox_x + UI_TEXTBOX_WIDTH, textBox_y + UI_TEXTBOX_HEIGHT,
UI_TEXTBOX_COLOR, false);

//draw dialogue
draw_set_font(Aldrich);
draw_set_color(c_white);
if(charCount < string_length(text[page])) {
	charCount += 1;
}

textPart = string_copy(text[page], 1, charCount); // used for the typewriter effect
pressText = "Press SPACE to continue"

draw_text_ext(textBox_x + UI_TEXTBOX_TEXT_MARGIN, textBox_y + UI_TEXTBOX_TEXT_MARGIN, textPart, 
	UI_TEXTBOX_STRING_HEIGHT, UI_TEXTBOX_WIDTH - 2 * 10); // write items's dialogue
draw_text_transformed(global.screen_center_x - (string_width(pressText) / 2), 
	(textBox_y + UI_TEXTBOX_HEIGHT) - UI_TEXTBOX_STRING_HEIGHT - UI_TEXTBOX_TEXT_MARGIN, pressText, 0.75, 0.75, 0);


