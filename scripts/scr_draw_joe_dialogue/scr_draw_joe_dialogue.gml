// script that draws the joe's dialogues
 
draw_set_color(c_red);
draw_text(textBox_x + xNameBuffer, textBox_y + yNameBuffer, "You"); // draws name of character talking
joeLine = 0;
lineSpacing = 1;
while(joeLine < ds_list_size(creator.joeDialogueList)) {
  
  if(ds_list_find_value(creator.joeDialoguePickedList, joeLine) == true)
    draw_set_color(c_gray);
  else
    draw_set_color(c_white);

  // write character's dialogue
  currentString = string(joeLine + 1) + ". " + ds_list_find_value(creator.joeDialogueList, joeLine)
  draw_text_ext(textBox_x + xBuffer, textBox_y + yBuffer + stringHeight * lineSpacing, 
  currentString, stringHeight, UI_TEXTBOX_WIDTH - 2 * xBuffer); 
  
  if(string_length(currentString) > 58) {
    lineSpacing += 2;
  } else {
    lineSpacing += 1;
  }
  joeLine += 1;
}