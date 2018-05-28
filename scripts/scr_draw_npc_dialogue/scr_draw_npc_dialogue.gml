// script that draws the npc's dialogues
 
if(creator.hasMetJoe == true) {
  
  if(charCount < string_length(creator.salutation)) {
    charCount += 1;
  }
  textPart = string_copy(creator.salutation, 1, charCount); // used for the typewriter effect
  
} else {
  
  if(charCount < string_length(text[creator.page, creator.line])) {
    charCount += 1;
  }
  textPart = string_copy(text[creator.page, creator.line], 1, charCount); // used for the typewriter effect
  
}
draw_set_color(creator.myNameColor);
draw_text(textBox_x + xNameBuffer, textBox_y + yNameBuffer, name); // draws name of character talking
draw_set_color(c_white);
draw_text_ext(textBox_x + xBuffer, textBox_y + yBuffer + stringHeight, textPart, stringHeight, UI_TEXTBOX_WIDTH - 2 * xBuffer); // write character's dialogue
draw_set_color(c_white);
draw_text_transformed(textBox_x + 410, textBox_y + 130, "Press SPACE to continue", 0.75, 0.75, 0);
 