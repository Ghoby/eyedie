/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, obj_joe) && visible == true && global.jackie_is_pised==false) {
	
	if(myTextbox == noone) {
			
		if(!obj_joe.inConversation) {  
			
			if(image_xscale != obj_joe.image_xscale) { // flips the npc to face joe in a conversation
				image_xscale = -image_xscale;			
			}
			
			//ui_icon.visible = false;
			obj_joe.image_speed = 0;
			obj_joe.image_index = 12;
			
			myTextbox = instance_create_layer(x, y, "Text", obj_dialog_box);
			myTextbox.name = myName;
			myTextbox.creator = self;
			if(hasMetJoe) {
				myTextbox.salutation = salutation;
				myTextbox.text = noone;
			} else {
				myTextbox.text = myDialogue;
			}
			obj_joe.inConversation = true; // to stop the main char from moving around
			journal_add_text(self);
		}
	}

}
else if (global.jackie_is_pised==true) {
	event_inherited();
}

else {
	ui_icon.visible = false;
	if(myTextbox != noone) {
		instance_destroy(myTextbox);
		myTextbox = noone;
	}
}


if(obj_joe.inConversation) {
	scr_dialogue_jackie_angry();
}
