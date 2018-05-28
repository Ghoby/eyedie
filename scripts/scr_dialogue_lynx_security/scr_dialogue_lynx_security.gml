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
		obj_joe.inConversation = false;
		hasMetJoe = true;
		global.lynx_security_hasMetJoe = hasMetJoe;
		global.lynx_security_joeDialogueList = joeDialogueList;
		global.lynx_security_joeDialoguePickedList = joeDialoguePickedList;
		global.lynx_security_joeDialoguePagesList = joeDialoguePagesList;
		myTextbox.destroyFlag = true; 
    }
  }
}
//if its the joe's turn to talk
else if(global.lynx_security_talked == true) {
	obj_joe.inConversation = false;
	hasMetJoe = true;
	global.lynx_security_hasMetJoe = hasMetJoe;
	global.lynx_security_joeDialogueList = joeDialogueList;
	global.lynx_security_joeDialoguePickedList = joeDialoguePickedList;
	global.lynx_security_joeDialoguePagesList = joeDialoguePagesList;
	myTextbox.destroyFlag = true; 
}

else {
	
	switch (keyboard_key) {
		case ord("1"):
		  journal_add_text2("The security guy at the Apartments doesn't let me up. I've got to find another way up.");
		  ds_list_replace(joeDialoguePickedList, 0, true);
	      myTextbox.joeDialogueTurn = false;
		  page = ds_list_find_value(joeDialoguePagesList, 0);
	      line = 0;
	      myTextbox.charCount = 0;
	      myTextbox.text = myDialogue;  
		  global.lynx_security_talked = true;
		  break;
			
		case ord("2"):
		  journal_add_text2("I managed to convince the security guard to let me up by showing him the cupholder.");
		  ds_list_replace(joeDialoguePickedList, 1, true);
	      myTextbox.joeDialogueTurn = false;
		  page = ds_list_find_value(joeDialoguePagesList, 1);
	      line = 0;
	      myTextbox.charCount = 0;
	      myTextbox.text = myDialogue;  
		  global.lynx_security_acceptence = true;
		  global.lynx_security_talked = true;
		  salutation = acceptence_salutation;
		  ds_map_replace(global.room_limits_map, room_apartment_lobby, [ROOM_APART_LOBBY_MIN, ROOM_APART_LOBBY_MAX]);
		  break;
		
		case ord("3"):
			obj_joe.inConversation = false;
			hasMetJoe = true;
			global.lynx_security_hasMetJoe = hasMetJoe;
			global.lynx_security_joeDialogueList = joeDialogueList;
			global.lynx_security_joeDialoguePickedList = joeDialoguePickedList;
			global.lynx_security_joeDialoguePagesList = joeDialoguePagesList;
			myTextbox.destroyFlag = true; 
	}
}