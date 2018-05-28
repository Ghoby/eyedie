/// @description Initial cupholder state


if(global.cupholderPickUp == true) {
	instance_deactivate_object(self);
	instance_activate_object(obj_laura);
}

else {
	event_inherited();
	myText[0] = "Jodi's Bar Cupholder was picked up";
	myName = "Jodi's Bar Cupholder";
	journalText = "Picked up a Jodi's Bar Cup Holder. There's something written on the back. It says \"Meet me at the new pick-up site. Remember 25. Signed: D.\"";

}