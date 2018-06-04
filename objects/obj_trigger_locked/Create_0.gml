/// @description On Trigger Create

visible = false;

ui_icon = instance_create_depth(x, y + UI_ICON_GOTO_Y, UI_DEPTH, obj_ui_interact);
ui_icon.sprite_index = trigger_icon;

event_inherited();
myText[0] = "Locked";
myName = "";

long_overlay.visible = false;
short_overlay.visible = false;