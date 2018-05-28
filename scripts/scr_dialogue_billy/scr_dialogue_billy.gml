if(myTextbox != noone && myTextbox.joeDialogueTurn == false && hasMetJoe == false) {
  
//if its the npc's turn to talk
  if (keyboard_check_pressed(vk_space)) {
    if(myTextbox.charCount < string_length(myTextbox.text[page, line])) {
      myTextbox.charCount = string_length(myTextbox.text[page, line]);
    } else if(line + 1 < array_length_2d(myTextbox.text, page)) {
      line++;
      myTextbox.charCount = 0;
    } else {
		
	  if(global.finished2 == true) {
		obj_joe.inConversation = false;
		myTextbox.destroyFlag = true; 
		room_goto(room_end);
	  } else {
	    hasMetJoe = false;
	    myTextbox.joeDialogueTurn = true;
	    myTextbox.text = joeDialogue;
	  }
	  
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

else {
	switch (keyboard_key) {
		case ord("1"):
		
		  
	      myTextbox.joeDialogueTurn = false;
		  page = ds_list_find_value(joeDialoguePagesList, 0);
	      line = 0;
	      myTextbox.charCount = 0;
	      myTextbox.text = myDialogue; 
		  
		  if(ds_list_find_index(joeDialogueList, "Do you know who killed my wife?") == -1) {
			  ds_list_clear(joeDialogueList);
			  ds_list_add(joeDialogueList, "Do you know who killed my wife?");
		  } else {
			  page = 3;
			  global.finished2 = true;
			  audio_sound_gain(obj_Music.currentMusic, 0, 2000);
		  }
		  break;
		case ord("2"):
		  if (scr_dialogue_exit_jackie(2))
	          break;
		  ds_list_replace(joeDialoguePickedList, 1, true);
	      myTextbox.joeDialogueTurn = false;
		  page = ds_list_find_value(joeDialoguePagesList, 1);
	      line = 0;
	      myTextbox.charCount = 0;
	      myTextbox.text = myDialogue;  
		  if(ds_list_find_index(joeDialogueList, "Do you know who killed my wife?") == -1) {
			  ds_list_clear(joeDialogueList);
			  ds_list_add(joeDialogueList, "Do you know who killed my wife?");
		  } else {
			  page = 3;
			  global.finished2 = true;
			  audio_sound_gain(obj_Music.currentMusic, 0, 2000);
		  }
		  break;
	}
}