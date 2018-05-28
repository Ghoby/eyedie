/// @description Initial Jackie state
event_inherited();

image_xscale = 1;
journalText = "Met Jackie today. A guy more or less in his 50's. Look's like life beat the holy hell outta him, but he still keeps on smiling.";
// Character introduction:
myName = "Jackie";
//after knowing joe
salutation = "Hey man! How you doin'?"

myNameColor = c_aqua;
hasSeenCupholder = global.jackie_hasSeenCupholder;
hasMetJoe = global.jackie_hasMetJoe;
joeDialogueList = global.jackie_joeDialogueList;
joeDialoguePickedList = global.jackie_joeDialoguePickedList;
joeDialoguePagesList = global.jackie_joeDialoguePagesList;

//first time meeting dialogue (before knowing joe)
myDialogue[0, 0] = "This city is goin' to pieces...";
myDialogue[0, 1] = "Crime and death everywere!";
myDialogue[0, 2] = "Last week, I saw woman's corpse on that alley over there. *He points to his right*";
myDialogue[0, 3] = "Haven't slept much since then...";

//Initial Dialogue choices: 

if(ds_list_empty(joeDialogueList)) {
	ds_list_add(joeDialogueList, "Do you know anything about that woman?");
	ds_list_add(joeDialogueList, "Who are you?");
	ds_list_add(joeDialogueList, "Good luck to you. (Exit)");
	
	for(i = 0; i < ds_list_size(joeDialogueList); i++) {
		ds_list_add(joeDialoguePagesList, i + 1);
	}
	
} else if (ds_list_find_index(joeDialogueList, "Can you tell me anything about this? *Show Cupholder*") == -1 && global.cupholderPickUp == true) {
	
	ds_list_insert(joeDialogueList, 0,  "Can you tell me anything about this? *Show Cupholder*");
	ds_list_insert(joeDialoguePickedList, 0, false);
	ds_list_insert(joeDialoguePagesList, 0, 4); //adds to the pages list the page value of 4 
	//ds_list_add(global.journal_list, "After showing Jackie the Cupholder he pointed me in the direction of Jodi's bar. Maybe i'll get some answers there");
}

if(ds_list_empty(joeDialoguePickedList)) {
	for(i = 0; i < ds_list_size(joeDialogueList); i++) {
		ds_list_add(joeDialoguePickedList, false);
	}
}

////////////////////////////

//"1. Do you know anything about what happened to that girl?"
myDialogue[1, 0] = "Nah man, sorry...";
myDialogue[1, 1] = "All I know is her body was dumped there, that's all.";
myDialogue[1, 2] = "T'was I who called the cops, actually.";
myDialogue[1, 3] = "From the little I've heard, her body was dumped there, but the murder happened some place else.";
myDialogue[1, 4] = "But the cops almost seemed like they didn't give a shit about her.";
myDialogue[1, 5] = "20 minutes was all it took for them to come and clean up the entire scene. No CSI's, no nothing!";
myDialogue[1, 6] = "They were was so sloppy that there's still dried blood in the walls and pavement!";
//////////////////////////////

//"2. Who are you?"
myDialogue[2, 0] = "Name's Jackie.";
myDialogue[2, 1] = "Just another guy that has too much time on his hands and not enough credits on his pocket...";
myDialogue[2, 2] = "...";
myDialogue[2, 3] = "Since the local Redford factory closed, it's all been down hill for me.";


////////////////////////////////////////////// 

//"3. The local factory closed down?"
myDialogue[3, 0] = "Yeah... the higher-ups felt the need to replace us workers with some top-of-the-line robots.";
myDialogue[3, 1] = "And we were just layed off, no thank-yous nor goodbyes...";
myDialogue[3, 2] = "Thrown to the wolves, just like that...";
myDialogue[3, 3] = "...";
myDialogue[3, 4] = "The little guy always gets screwed first.";

//"2. Test"
myDialogue[4, 0] = "That's a cupholder from the best dump in the lower district, Jodi's.";
myDialogue[4, 1] = "Hmmm... What's this?";
myDialogue[4, 2] = "\"Meet me at the new pick-up site. Signed: D.\"";
myDialogue[4, 3] = "I have no clue what this means.";
myDialogue[4, 4] = "You better check in with Jodi herself and ask her what she knows.";
myDialogue[4, 5] = "She's not the most trusting sort, so tell her I sent you. She and I go a long way back.";