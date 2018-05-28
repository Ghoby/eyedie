/// @description Interaction with character
// You can write your code in this editor

event_inherited();

if(global.is_eye_on == true) {
	visible = true;
} else {
	visible = false;
}

if( place_meeting(x, y, obj_joe) && visible == true ){
	if(myTextbox == noone) {
		if(keyboard_check_pressed(ord("E"))) {
			obj_joe.image_speed = 0;
			obj_joe.image_index = 12;
			
			myTextbox = instance_create_layer(x, y, "Text", obj_item_textbox);
			myTextbox.text = myText;
			myTextbox.creator = self;
			itemStatus(self);
			journal_add_text(self);
			inventory_add_item(self);
			global.itemPause = true;
			instance_deactivate_object(self);
		}
	}
}
else {
	if(myTextbox != noone) {
		instance_destroy(myTextbox);
		myTextbox = noone;
	}
}
