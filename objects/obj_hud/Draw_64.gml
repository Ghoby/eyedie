/// @description Draw HUD
offset_y = 0

for (i = 0; i < ds_list_size(hud_list); i++)
{
	draw_set_color(c_white);
	draw_set_font(Aldrich);
	draw_text(hud_x, hud_y + offset_y, hud_list[|i]);
	offset_y += hud_height;
}


if (global.toggleJournalUpdate == true) {
	if(countdown!=0) {
		draw_set_color(c_white);
		draw_set_font(Aldrich);
		draw_text(journal_hud_x, journal_hud_y , UI_JOURNAL_TEXT);
		countdown--
	}
	else {
		global.toggleJournalUpdate = false;
		countdown = room_speed*3
	}
}