/// @description Dialogue Textbox

//draw textbox
draw_rectangle_color(textBoxCoordX - 2, textBoxCoordY - 2, 
					textBoxCoordX + boxWidth + 2, textBoxCoordY + boxHeight + 2, 
					c_gray, c_gray, c_gray, c_gray, false);
draw_sprite(spr_box, 0, textBoxCoordX, textBoxCoordY);

//draw dialogue
draw_set_font(Aldrich);

draw_set_color(c_aqua);
draw_text(textBoxCoordX + xNameBuffer, textBoxCoordY + yNameBuffer, name); // draws name of character talking
draw_set_color(c_white);

// IMPLEMENTAR RESTO

//if (joeLine + 1 < array_length_2d(text, joePage)) {
draw_text_ext(textBoxCoordX + xBuffer, textBoxCoordY + yBuffer + stringHeight, 
	text[joePage, joeLine], stringHeight, boxWidth - 2 * xBuffer); // write character's dialogue
	//joeLine += 1;
//}



