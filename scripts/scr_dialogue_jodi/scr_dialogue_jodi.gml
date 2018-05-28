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
else if (global.jodi_intimidated == false) {
  switch (keyboard_key) {
    case ord("1"):
      if (scr_dialogue_exit_jodi(1))
        break;
    
      myTextbox.joeDialogueTurn = false;
      myTextbox.charCount = 0;
      myTextbox.text = myDialogue; 
	  line = 0;
	  page = ds_list_find_value(joeDialoguePagesList, 0);
	  if(global.cupholderPickUp == true) {
		  if (global.jackie_hasSeenCupholder == true && ds_list_find_index(joeDialogueList, "Jackie said you could help me. *Show Cupholder*") == 0){
			  journal_add_text2("Jodi didn't know much about that D mark... But she pointed me in the East Apartment Complex's direction. The apartment's number is 25.");
			  if(ds_list_find_index(joeDialogueList, "Tell me about it or I'll reck this place! *Intimidate*") == 1) {
				  ds_list_delete(joeDialogueList, 1);
				  ds_list_delete(joeDialoguePickedList, 1);
				  ds_list_delete(joeDialoguePagesList, 1);
			  }
			  ds_list_delete(joeDialogueList, 0);
			  ds_list_delete(joeDialoguePickedList, 0);
			  ds_list_delete(joeDialoguePagesList, 0);
			  global.firstPart = false;
			  global.secondPart = true;
			  write_to_registry("Time to convince Jodi: " + string(get_timer()/1000000) + "s");
		  }
		  else if(ds_list_find_index(joeDialogueList, "Tell me about it or I'll reck this place! *Intimidate*") == 0) {
			journal_add_text2("I forced Jodi to talk. She pointed me in the East Apartment Complex's direction. The apartment's number is 25.");
			ds_list_delete(joeDialogueList, 0);
			ds_list_delete(joeDialoguePickedList, 0);
			ds_list_delete(joeDialoguePagesList, 0);
			salutation = intimidated_salutation;
			global.jodi_intimidated = true;
			global.firstPart = false;
			global.secondPart = true;
			write_to_registry("Time to convince Jodi: " + string(get_timer()/1000000) + "s");
		  }
		  else {
			  journal_add_text2("Jodi wasn't in the mood for much talking on this subject. Maybe i can find a way of making her open up.");
			  ds_list_replace(joeDialogueList, 0, "Tell me about it or I'll reck this place! *Intimidate*");
			  ds_list_replace(joeDialoguePickedList, 0, 0);
			  ds_list_replace(joeDialoguePagesList, 0, 5);
		  }
	  }
      break;
      
    case ord("2"):
      if (scr_dialogue_exit_jodi(2))
	          break;
        
      myTextbox.joeDialogueTurn = false;
	  page = ds_list_find_value(joeDialoguePagesList, 1);
      line = 0;
      myTextbox.charCount = 0;
      myTextbox.text = myDialogue;
	  if(ds_list_find_index(joeDialogueList, "Tell me about it or I'll reck this place! *Intimidate*") == 1) {
		journal_add_text2("I forced Jodi to talk. She pointed me in the East Apartment Complex's direction. The apartment's number is 25.");
		ds_list_delete(joeDialogueList, 1);
	    ds_list_delete(joeDialoguePickedList, 1);
		ds_list_delete(joeDialoguePagesList, 1);
		ds_list_delete(joeDialogueList, 0);
		ds_list_delete(joeDialoguePickedList, 0);
		ds_list_delete(joeDialoguePagesList, 0);
		salutation = intimidated_salutation;
		global.jodi_intimidated = true;
		global.firstPart = false;
		global.secondPart = true;
		write_to_registry("Time to convince Jodi: " + string(get_timer()/1000000) + "s");
	 }
      break;
      
    case ord("3"):
      if (scr_dialogue_exit_jodi(3))
        break;  
		
      myTextbox.joeDialogueTurn = false;
	  page = ds_list_find_value(joeDialoguePagesList, 2);
      line = 0;
      myTextbox.charCount = 0;
      myTextbox.text = myDialogue;  
 
      break;
  
  case ord("4"):
      if (scr_dialogue_exit_jodi(4))
        break;  
      myTextbox.joeDialogueTurn = false;
	  page = ds_list_find_value(joeDialoguePagesList, 3);
      line = 0;
      myTextbox.charCount = 0;
      myTextbox.text = myDialogue;  
	  
      break;
	  
  case ord("5"): // THIS DIALOGUE WILL ALWAYS BE FOR EXIT (FOR NOW)
      if (scr_dialogue_exit_jodi(5))
        break;  
      break;
  }
}

else if (global.jodi_intimidated == true) {
  obj_joe.inConversation = false;
  hasMetJoe = true;
  global.jodi_hasMetJoe = hasMetJoe;
  global.jodi_joeDialogueList = joeDialogueList;
  global.jodi_joeDialoguePickedList = joeDialoguePickedList;
  global.jodi_joeDialoguePagesList = joeDialoguePagesList;
  myTextbox.destroyFlag = true;
}