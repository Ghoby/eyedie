/// @description npc dialog interaction

if (place_meeting(x, y, obj_joe) && visible == true) {
	
	if(myTextbox == noone) {
		ui_icon.visible = place_meeting(x, y, obj_joe);
		ui_icon.sprite_index = spr_e_key_talk;
	
		if(keyboard_check_pressed(ACTION_KEY) && !obj_joe.inConversation) {  
			
			if(image_xscale != obj_joe.image_xscale) { // flips the npc to face joe in a conversation
				image_xscale = -image_xscale;			
			}
			
			ui_icon.visible = false;
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
	
} else {
	ui_icon.visible = false;
	if(myTextbox != noone) {
		instance_destroy(myTextbox);
		myTextbox = noone;
	}
}
