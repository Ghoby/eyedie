/// @description Insert description here
// You can write your code in this editor
event_inherited();

ui_icon.y = ui_icon.y + 20;

journalText = "D. actually stands for Diane. She apparently knows something about my wife's murder that I don't. I need to figure what it is.";
// Character introduction:
myName = "Diane";

salutation = "Hello Joe. Do you require anything?";
toEnd = false;
myNameColor = c_fuchsia;

hasMetJoe = global.diane_hasMetJoe;
joeDialogueList = global.diane_joeDialogueList;
joeDialoguePickedList = global.diane_joeDialoguePickedList;
joeDialoguePagesList = global.diane_joeDialoguePagesList;

//first time meeting dialogue (before knowing joe)
myDialogue[0, 0] = "Joe...";
myDialogue[0, 1] = "I wasn't so sure you would pick up my... message.";
myDialogue[0, 2] = "It was a bit of a risk leaving the cupholder there in the alley. Some bum might have wiped his ass with it, or something.";
myDialogue[0, 3] = "But I guess it all worked out in the end, seeing that you're here.";
myDialogue[0, 4] = "So tell me...";
myDialogue[0, 5] = "Do you want to know what happened to your dear departed Laura?";

if (global.lynx_security_acceptence == false) {
	myDialogue[0, 0] = "Joe?!";
	myDialogue[0, 1] = "That red-haired retard must have blocked your way up. I'm sorry darling.";
	myDialogue[0, 2] = "But aren't you the resourceful one. Sneeking in throught the fire-escape.";
	myDialogue[0, 3] = "No wonder you found out my message on that alley.";
	myDialogue[0, 4] = "It was a bit of a risk leaving the cupholder there. Some bum might have wiped his ass with it, or something.";
	myDialogue[0, 5] = "But I guess it all worked out in the end, seeing that you're here.";
	myDialogue[0, 6] = "So tell me...";
	myDialogue[0, 7] = "Do you want to know what happened to your dear departed Laura?";
}

//Initial Dialogue choices: 

if(ds_list_empty(joeDialogueList)) {
	ds_list_add(joeDialogueList, "Who... who are you?");
	ds_list_add(joeDialogueList, "What the hell do you know about my wife?!");
	ds_list_add(joeDialogueList, "(Exit)");
	
	for(i = 0; i < ds_list_size(joeDialogueList); i++) {
		ds_list_add(joeDialoguePagesList, i + 1);
	}
}
	
if(ds_list_empty(joeDialoguePickedList)) {
	for(i = 0; i < ds_list_size(joeDialogueList); i++) {
		ds_list_add(joeDialoguePickedList, false);
	}
}
	
//"Who... who are you?"
myDialogue[1, 0] = "Me, darling? I'm nobody.";
myDialogue[1, 1] = "But you can call me Diane.";
myDialogue[1, 2] = "For now, you don't need to know anything else about me.";


//"What the hell do you know about my wife?!"
myDialogue[2, 0] = "Well...";
myDialogue[2, 1] = "Poor little Laura stuck a tiny bit more than only her nose in some pretty nasty business, with equally nasty people.";
myDialogue[2, 2] = "Of course, as soon as they found out about her, she was murdered. Plain and simple.";
myDialogue[2, 3] = "I have to say, her dedication to her profession makes me believe again in the virtues of journalism.";
myDialogue[2, 4] = "And her cybernetic eye, the one which you are carrying right now...";
myDialogue[2, 5] = "That was her stroke of genius in life.";
myDialogue[2, 6] = "It is still adapting to your body, but I believe you will make good use of it.";

//You know about the eye?

myDialogue[3, 0] = "*Lights a new premium quality cigarrete*";
myDialogue[3, 1] = "Of course I know about it.";
myDialogue[3, 2] = "*Puffs some smoke into the ceiling*";
myDialogue[3, 3] = "I'm the one who delivered it to your doorstep.";
myDialogue[3, 4] = "I owed Laura a little something and my debt is almost paid.";
myDialogue[3, 5] = "But now let's get down to business.";
myDialogue[3, 6] = "You're going to find out who killed Laura...";
myDialogue[3, 7] = "And I believe I can point you in the right direction...";

//Where do you want me to go?
myDialogue[4, 0] = "The Redford Factory.";
myDialogue[4, 1] = "*Puffs some smoke again*";
myDialogue[4, 2] = "I believe you will learn something interesting there. You're eye is going to be useful there.";
myDialogue[4, 3] = "Go along now darling.";
myDialogue[4, 4] = "And good luck. We'll both need it.";
myDialogue[4, 5] = "*Puts out the cigarrete*";