//
if(ds_list_size(joeDialogueList) < argument0) {
  return true;
} else if(string_pos("(Exit)", ds_list_find_value(joeDialogueList, argument0 - 1))) {
  obj_joe.inConversation = false;
  hasMetJoe = true;
  global.jackie_hasMetJoe = hasMetJoe;
  global.jackie_hasSeenCupholder = hasSeenCupholder;
  global.jackie_joeDialogueList = joeDialogueList;
  global.jackie_joeDialoguePickedList = joeDialoguePickedList;
  global.jackie_joeDialoguePagesList = joeDialoguePagesList;
  myTextbox.destroyFlag = true;
  return true;
} else {
  ds_list_replace(joeDialoguePickedList, argument0 - 1, true);
  return false;
}