/// @description Dialogue Creation

salutation = " ";
text = " ";
destroyFlag = false;

page = 0;
line = 0;

creator = noone;
name = noone;

//bool that says if it's joe's turn to speak
joeDialogueTurn = false;

//spacing between  and textbox
xBuffer = UI_TEXTBOX_TEXT_X; 
yBuffer = UI_TEXTBOX_TEXT_Y;

xNameBuffer = UI_TEXTBOX_NAME_X; 
yNameBuffer = UI_TEXTBOX_NAME_Y;

charCount = 0;
stringHeight = UI_TEXTBOX_STRING_HEIGHT; // distance between characters in text

// Calc Box coords
textBox_x = UI_TEXTBOX_MARGIN_X;
textBox_y = UI_TEXTBOX_MARGIN_Y - UI_TEXTBOX_HEIGHT;
textBox_x2 = textBox_x  + UI_TEXTBOX_WIDTH;
textBox_y2 = textBox_y + UI_TEXTBOX_HEIGHT;

// Calc outline coords
textBox_outline_x = textBox_x - UI_TEXTBOX_OUTLINE;
textBox_outline_y = textBox_y - UI_TEXTBOX_OUTLINE;
textBox_outline_x2 = textBox_x2 + UI_TEXTBOX_OUTLINE;
textBox_outline_y2 = textBox_y2 + UI_TEXTBOX_OUTLINE;

lineSpacing = UI_TEXTBOX_SPACING;