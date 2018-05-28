/// @description Jodi initial state

event_inherited();

journalText = "Met a woman named Jodi. She owns a bar here in the lower district. A decent barmaid, but she feels a bit reserved.";
// Character introduction:
myName = "Jodi";
//after knowing joe
salutation = "Hey! What will you be having?";
intimidated_salutation = "I already told you to leave!!!! *Sobs*";

if(global.jodi_intimidated == true) {
	salutation = intimidated_salutation;
}

reachedTheEnd = false; //Variable to enable endGameScreen (TEMPORARY)
myNameColor = c_orange;

hasMetJoe = global.jodi_hasMetJoe;
joeDialogueList = global.jodi_joeDialogueList;
joeDialoguePickedList = global.jodi_joeDialoguePickedList;
joeDialoguePagesList = global.jodi_joeDialoguePagesList;
aux = false;

//first time meeting dialogue (before knowing joe)
myDialogue[0, 0] = "Never seen you around these parts...";
myDialogue[0, 1] = "You must be from one of the upper districts.";
myDialogue[0, 2] = "Well, welcome to Jodi's. I'm Jodi. Do you want anything?";

// Animation
jodi_animating = false;
jodi_idle_count = 0;			// ALLWAYS 0
jodi_idle_target = 250;
image_speed = 0;

//Initial Dialogue choices: 

if(ds_list_empty(joeDialogueList)) {
	ds_list_add(joeDialogueList, "No offense, but this place is pretty empty.");
	ds_list_add(joeDialogueList, "How long have you owned this bar?");
	ds_list_add(joeDialogueList, "Bye. (Exit)");
	
	for(i = 0; i < ds_list_size(joeDialogueList); i++) {
		ds_list_add(joeDialoguePagesList, i + 1);
	}
	
} 

if (ds_list_find_index(joeDialogueList, "Jackie said you could help me. *Show Cupholder*") == -1 && global.jackie_hasSeenCupholder == true) {
	
	ds_list_insert(joeDialogueList, 0,  "Jackie said you could help me. *Show Cupholder*");
	ds_list_insert(joeDialoguePickedList, 0, false);
	ds_list_insert(joeDialoguePagesList, 0, 4); //adds to the pages list the page value of 4 
	//ds_list_add(global.journal_list, "Seems like Jodi didn't know much about what that D mark represents... But she did point me in the Redford factory's direction. Gotta look for more answers there");
	
} else if (ds_list_find_index(joeDialogueList, "Do you know anything about this? *Show Cupholder*") == -1 && global.cupholderPickUp == true && global.jackie_hasSeenCupholder == false) {
	
	ds_list_insert(joeDialogueList, 0,  "Do you know anything about this? *Show Cupholder*");
	ds_list_insert(joeDialoguePickedList, 0, false);
	ds_list_insert(joeDialoguePagesList, 0, 3); //adds to the pages list the page value of 4 
	//ds_list_add(global.journal_list, "Jodi wasn't in the mood for much talking on this subject. She must be afraid of getting involved. Maybe i can find a way of making her open up.");
}



if(ds_list_empty(joeDialoguePickedList)) {
	for(i = 0; i < ds_list_size(joeDialogueList); i++) {
		ds_list_add(joeDialoguePickedList, false);
	}
}

// "No offense, but this place is pretty empty."
myDialogue[1, 0] = "Yeah, this bar is dying by the minute...";
myDialogue[1, 1] = "Less customers each passing day.";
myDialogue[1, 2] = "Since that damn robot factory layed off all its workers, people around here have only dust in their pockets...";
myDialogue[1, 3] = "Not enough money for them to drown their sorrows for not having enough money."
myDialogue[1, 4] = "Oh the irony!"

// "How long have you owned this bar?"
myDialogue[2, 0] = "For about 15 years now.";
myDialogue[2, 1] = "My mom passed it to me when she... died. She was the owner and bartender before all that.";
myDialogue[2, 2] = "She named this place after me.";
myDialogue[2, 3] = "This place was full of life back then...";

//"Do you know anything about this? *Show Cupholder*"
myDialogue[3, 0] = "Nope, get that away from here.";
myDialogue[3, 1] = "I don't want to be involved in that sort of business.";
myDialogue[3, 2] = "This bar is enough in crapper as it is.";

// "Jackie said you tell me more about this. *Show Cupholder*"
myDialogue[4, 0] = "Oh, Jackie sent you?!";
myDialogue[4, 1] = "Hmmm... Okay, let me see that thing.";
myDialogue[4, 2] = "...";
myDialogue[4, 3] = "I have no clue who that \"D.\" is. But I think I know where that pick-up site...";
myDialogue[4, 4] = "The East Apartment Complex had every person living there kicked out for some reason. Now dealers and all sorts of shady guys are doing their \"business\" around there.";
myDialogue[4, 5] = "Less people moving around and all that."
myDialogue[4, 6] = "And \"Remember 25\" must mean apartment 25."
myDialogue[4, 7] = "Oh, please tell Jackie he still owes me a game of digital blackjack!"

myDialogue[5, 0] = "*Gasps*";
myDialogue[5, 1] = "Jesus Christ, okay!!!";
myDialogue[5, 2] = "L-l-let me see that thing!";
myDialogue[5, 3] = "I-I-I don't know a-any \"D.\". But t-the pick-up site...";
myDialogue[5, 4] = "The East Apartment Complex had every person living there kicked out for some reason. Now dealers and all sorts of shady guys are doing their \"business\" around there.";
myDialogue[5, 5] = "A-a-and \"Remember 25\"... that must mean apartment 25."
myDialogue[5, 6] = "I d-don't know anything else!";
myDialogue[5, 7] = "Now... get out... please... *sobs*";
