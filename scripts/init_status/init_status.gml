/// @description Creates and initializes global variables


//########################

global.playerID = "A1"; 

//########################





// registry stuff
global.fileName = working_directory + "\player_registry\\" + global.playerID + ".txt";
global.file = file_text_open_write(global.fileName);
global.EyeCounter = 0;
global.EyeTime = 0;
global.EyeTimeAux1 = 0;
global.EyeTimeAux2 = 0;

//################################################

//laura appearing
global.lauraToAppear = false;
global.lauraToAppearAux = false;

global.firstPart = true;
global.secondPart = false;

// Cyber Eye
global.is_eye_on = false;

// Interactables
global.interacts_regist = ds_list_create();

global.inventory_list = ds_list_create();

global.finished = false;
global.finished2 = false;
global.itemPause = false;

global.journal_list = ds_list_create();
global.item_list = ds_list_create();
global.cupholderPickUp = false;

global.toggleJournalUpdate = false;

// Jackie related variables
global.jackie_hasMetJoe = false;
global.jackie_hasSeenCupholder = false;
global.jackie_joeDialoguePickedList = ds_list_create();
global.jackie_joeDialogueList = ds_list_create();
global.jackie_joeDialoguePagesList = ds_list_create();

// Jodi related variables
global.jodi_hasMetJoe = false;
global.jodi_joeDialoguePickedList = ds_list_create();
global.jodi_joeDialogueList = ds_list_create();
global.jodi_joeDialoguePagesList = ds_list_create();
global.jodi_intimidated = false;

// Lynx's Security related variables
global.lynx_security_hasMetJoe = false;
global.lynx_security_joeDialoguePickedList = ds_list_create();
global.lynx_security_joeDialogueList = ds_list_create();
global.lynx_security_joeDialoguePagesList = ds_list_create();
global.lynx_security_acceptence = false;
global.lynx_security_talked = false;

// DIane related variables
global.diane_hasMetJoe = false;
global.diane_joeDialoguePickedList = ds_list_create();
global.diane_joeDialogueList = ds_list_create();
global.diane_joeDialoguePagesList = ds_list_create();
global.diane_infoAboutLaura = false;

global.joePosX = 0;
global.joePosY = 0;

global.cameFromAlley = false;
global.cameFromBar = false;
global.goingToCity = false;
global.cameFromBathroom = false;
global.cameFromLynx = false;
global.cameFromLynxBack = false;

global.max1LevelJournalSize = 0;

// Position Stack
global.position_map = ds_map_create();

journal_add_text2("I need to go to the alley where Laura's body was dumped. It's somewhere in this street.")

