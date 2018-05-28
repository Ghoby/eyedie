//
if(ds_list_size(joeDialogueList) < argument0) {
  return true;
} else if(string_pos("(Exit)", ds_list_find_value(joeDialogueList, argument0 - 1))) {
  obj_joe.inConversation = false;
  hasMetJoe = true;
  global.jodi_hasMetJoe = hasMetJoe;
  global.jodi_joeDialogueList = joeDialogueList;
  global.jodi_joeDialoguePickedList = joeDialoguePickedList;
  global.jodi_joeDialoguePagesList = joeDialoguePagesList;
  myTextbox.destroyFlag = true;
  return true;
} else {
  ds_list_replace(joeDialoguePickedList, argument0 - 1, true);
  return false;
}