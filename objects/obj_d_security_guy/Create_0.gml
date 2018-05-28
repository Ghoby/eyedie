/// @description Lynx's Security Guy initial state

event_inherited();

journalText = "There's a security guard in the East Apartment building. He's blocking the stairs.";

// Character introduction:
myName = "Security Guy";
//after knowing joe
salutation = "Not you again! Leave the buildin' now, or I'll kick you out meself!";
acceptence_salutation = "Go on up. She's on room 25.";

if(global.lynx_security_acceptence == true) {
	salutation = acceptence_salutation;
}

myNameColor = c_olive;

hasMetJoe = global.lynx_security_hasMetJoe;
joeDialogueList = global.lynx_security_joeDialogueList;
joeDialoguePickedList = global.lynx_security_joeDialoguePickedList;
joeDialoguePagesList = global.lynx_security_joeDialoguePagesList;

//first time meeting dialogue (before knowing joe)
myDialogue[0, 0] = "Sorry mate! Can't let you go up.";
myDialogue[0, 1] = "This building is on temporary lockdown. Government business.";
myDialogue[0, 2] = "So I advise you to turn 'round and go somewhere else.";

if(ds_list_empty(joeDialogueList)) {
	ds_list_add(joeDialogueList, "There's someone up there I need to talk to.");
	ds_list_add(joeDialogueList, "I would like to talk to D. *Show Cupholder*");
	ds_list_add(joeDialogueList, "I'll leave then... (Exit)");
	
	for(i = 0; i < ds_list_size(joeDialogueList); i++) {
		ds_list_add(joeDialoguePagesList, i + 1);
	}
} 

if(ds_list_empty(joeDialoguePickedList)) {
	for(i = 0; i < ds_list_size(joeDialogueList); i++) {
		ds_list_add(joeDialoguePickedList, false);
	}
}

// "There's someone up there I need to talk to."
myDialogue[1, 0] = "Let me repeat what I said.";
myDialogue[1, 1] = "I advise you to TURN 'ROUND and GO somewhere else.";
myDialogue[1, 2] = "I've just about had enough of your pesterin'";
myDialogue[1, 3] = "SO GET OUT!";

// "I would like to talk to D. *Show Cupholder*"
myDialogue[2, 0] = "What's that?";
myDialogue[2, 1] = "This...";
myDialogue[2, 2] = "This is m'lady's handwriting...";
myDialogue[2, 3] = "...";
myDialogue[2, 4] = "*The security guard walks to the outside door and looks for movement in the street.*";
myDialogue[2, 5] = "Hmm...";
myDialogue[2, 6] = "M'lady didn't inform me of any of this. But it's her handwriting...";
myDialogue[2, 7] = "I guess you can go on up. I believe you know the room.";