if(myTextbox != noone && myTextbox.joeDialogueTurn == false && hasMetJoe == false) {
  
//if its the npc's turn to talk
  if (keyboard_check_pressed(vk_space)) {
    if(myTextbox.charCount < string_length(myTextbox.text[page, line])) {
      myTextbox.charCount = string_length(myTextbox.text[page, line]);
    } else if(line + 1 < array_length_2d(myTextbox.text, page)) {
      line++;
      myTextbox.charCount = 0;
    } else {
      hasMetJoe = false;
      myTextbox.joeDialogueTurn = true;
      myTextbox.text = joeDialogue;  
    }
  }
  
} else if (myTextbox.joeDialogueTurn == false && hasMetJoe == true){
  if (keyboard_check_pressed(vk_space)) {
    if(myTextbox.charCount < string_length(salutation)) {
      myTextbox.charCount = string_length(salutation);
    } else {
      hasMetJoe = false;
      myTextbox.joeDialogueTurn = true;
      myTextbox.text = joeDialogue;  
    }
  }
}
//if its the joe's turn to talk
else {
  switch (keyboard_key) {
    case ord("1"):
      if (scr_dialogue_exit_jackie(1))
        break;
    
      myTextbox.joeDialogueTurn = false;
      myTextbox.charCount = 0;
      myTextbox.text = myDialogue; 
	  line = 0;
	  page = ds_list_find_value(joeDialoguePagesList, 0);
	  
	  if(global.cupholderPickUp == true) {
		  hasSeenCupholder = true;
		  global.jackie_hasSeenCupholder = true;   //why doesnt it work using only the globalvariable?
		  journal_add_text2("After showing Jackie the Cupholder he pointed me in the direction of Jodi's bar. Maybe i'll get some answers there");
	  }
	  
      break;
      
    case ord("2"):
      if (scr_dialogue_exit_jackie(2))
	          break;
        
      myTextbox.joeDialogueTurn = false;
      //page = 2;
	  page = ds_list_find_value(joeDialoguePagesList, 1);
      line = 0;
      myTextbox.charCount = 0;
      myTextbox.text = myDialogue;
	  
	  if(ds_list_find_index(joeDialogueList, "The local factory closed down?") == -1) {
		  ds_list_insert(joeDialogueList, 2, "The local factory closed down?");
		  ds_list_insert(joeDialoguePickedList, 2, false);
		  ds_list_insert(joeDialoguePagesList, 2, 3);
	  }
	  
      break;
      
    case ord("3"):
      if (scr_dialogue_exit_jackie(3))
        break;  
      myTextbox.joeDialogueTurn = false;
	  page = ds_list_find_value(joeDialoguePagesList, 2);
      line = 0;
      myTextbox.charCount = 0;
      myTextbox.text = myDialogue;  
 
      break;
  
  case ord("4"):
      if (scr_dialogue_exit_jackie(4))
        break;
      myTextbox.joeDialogueTurn = false;
	  page = ds_list_find_value(joeDialoguePagesList, 3);
      line = 0;
      myTextbox.charCount = 0;
      myTextbox.text = myDialogue;  
	  
      break;
	  
  case ord("5"): // THIS DIALOGUE WILL ALWAYS BE FOR EXIT (FOR NOW)
      if (scr_dialogue_exit_jackie(5))
        break;  
      break;
  }
}