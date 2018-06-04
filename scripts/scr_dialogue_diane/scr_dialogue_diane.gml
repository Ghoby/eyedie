if(myTextbox != noone && myTextbox.joeDialogueTurn == false && hasMetJoe == false) {
  
//if its the npc's turn to talk
  if (keyboard_check_pressed(vk_space)) {
    if(myTextbox.charCount < string_length(myTextbox.text[page, line])) {
      myTextbox.charCount = string_length(myTextbox.text[page, line]);
    } else if(line + 1 < array_length_2d(myTextbox.text, page)) {
      line++;
      myTextbox.charCount = 0;
    } else {
		if (global.diane_toEnd == true) {
			write_to_registry("Time to finish game: " + string(get_timer()/1000000) + "s");
			room_goto(room_end);
		}
		else {
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
} else {
	switch (keyboard_key) {
		case ord("1"):
		    ds_list_replace(joeDialoguePickedList, 0, true);
		    myTextbox.joeDialogueTurn = false;
			page = ds_list_find_value(joeDialoguePagesList, 0);
		    line = 0;
		    myTextbox.charCount = 0;
		    myTextbox.text = myDialogue; 
			
		    break;
		
		case ord("2"):
			myTextbox.joeDialogueTurn = false;
			page = ds_list_find_value(joeDialoguePagesList, 1);
		    line = 0;
		    myTextbox.charCount = 0;
		    myTextbox.text = myDialogue;  
			
			if(global.diane_infoAboutLaura == true) {
				if (global.diane_infoAboutLocation == false) {
					ds_list_replace(joeDialogueList, 1, "Where should I go? Tell me.");
					ds_list_replace(joeDialoguePickedList, 1, 0);
					ds_list_replace(joeDialoguePagesList, 1, 4);
					global.diane_infoAboutLocation = true;
					
				} else {
					global.diane_toEnd = true;
				}
			} else {
				global.diane_infoAboutLaura = true;
				ds_list_replace(joeDialogueList, 1, "You know about her eye?");
				ds_list_replace(joeDialoguePickedList, 1, 0);
				ds_list_replace(joeDialoguePagesList, 1, 3);
			}
			
			break;
		
		case ord("3"):
			obj_joe.inConversation = false;
			hasMetJoe = true;
			global.lynx_security_hasMetJoe = hasMetJoe;
			global.lynx_security_joeDialogueList = joeDialogueList;
			global.lynx_security_joeDialoguePickedList = joeDialoguePickedList;
			global.lynx_security_joeDialoguePagesList = joeDialoguePagesList;
			myTextbox.destroyFlag = true;   
 
	      break;	
	}
}