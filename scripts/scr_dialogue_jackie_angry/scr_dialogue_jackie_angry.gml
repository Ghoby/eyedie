if(myTextbox != noone && myTextbox.joeDialogueTurn == false && hasMetJoe == false) {
  
//if its the npc's turn to talk
  if (keyboard_check_pressed(vk_space)) {
    if(myTextbox.charCount < string_length(myTextbox.text[page, line])) {
      myTextbox.charCount = string_length(myTextbox.text[page, line]);
    } else if(line + 1 < array_length_2d(myTextbox.text, page)) {
      line++;
      myTextbox.charCount = 0;
    } else {
      obj_joe.inConversation = false;
	  myTextbox.destroyFlag = true;
	  hasMetJoe = true;
	  global.jackie_is_pised = true;
    }
  } 
} else if (myTextbox.joeDialogueTurn == false && hasMetJoe == true){
  if (keyboard_check_pressed(vk_space)) {
    if(myTextbox.charCount < string_length(salutation)) {
      myTextbox.charCount = string_length(salutation);
    } else {
      obj_joe.inConversation = false;
	  myTextbox.destroyFlag = true;
	  hasMetJoe = true;
    }
  }
}