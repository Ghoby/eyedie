/// @description Initial npc state
myTextbox = noone;
myName = "";
myNameColor = NPC_NAME_COLOR;
hasMetJoe = false;
salutation = "";
myDialogue[0, 0] = "";

joeDialogue[0, 0] = "";
joeDialogueList = ds_list_create();
joeDialoguePickedList = ds_list_create();
joeDialoguePagesList = ds_list_create();

//scrobble through npc's dialog
page = 0;
line = 0;

ui_icon = instance_create_depth(x, y + UI_ICON_NPC_Y, UI_DEPTH, obj_ui_interact);