/// @description Dialogue Textbox

//draw textbox
draw_sprite(spr_box, 0, textBoxCoordX, textBoxCoordY);

//draw dialogue
draw_set_font(Aldrich);

if(charCount < string_length(text[page])) {
	charCount += 1;
}

textPart = string_copy(text[page], 1, charCount); // used for the typewriter effect

draw_text(textBoxCoordX + xNameBuffer, textBoxCoordY + yNameBuffer, name); // draws name of character talking

draw_text_ext(textBoxCoordX + xBuffer, textBoxCoordY + yBuffer + stringHeight, textPart, stringHeight, boxWidth - 2 * xBuffer); // write character's dialogue
 


