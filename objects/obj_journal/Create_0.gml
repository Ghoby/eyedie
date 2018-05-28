/// @description Notebook Init

journal_up = false;
journal_scale = 1;
journal_depth = -1;
journal_step = 20;
journal_margin = 20;

visible = false;

x = view_wport[view_current] - global.screen_center_x - 150; //window_get_width() / 2;
y = view_hport[view_current] - global.screen_center_y - 105;// window_get_height() / 2;

key_x = x - x/2;
key_y1 = y - y/2;
key_y2 = y + y/2;

journal_write_x = x  - (sprite_get_width(spr_notebook) * journal_scale / 2) + journal_margin;
journal_write_y = y  - (sprite_get_height(spr_notebook) * journal_scale / 2) + journal_margin;
lineSpacing = 0;
title = "Journal";
entrySeparation = "";
for (i=0; i<=68 ; i++) {
	entrySeparation += "-";
}
//menuArray = ds_list_create();
menuArray[0] = "";
secondLevel[0] = "";
page_entry = 0;

max1LevelJournalSize = 0;
page_Number = 0;
confidential = "*****************Confidential Information***************"



