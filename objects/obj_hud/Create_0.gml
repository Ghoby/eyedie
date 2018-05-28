/// @description On HUD Creation

draw_set_font(Aldrich);
hud_list = ds_list_create();
hud_width_list = ds_list_create();

ds_list_add(hud_list, UI_HUD_EYE_TEXT);
ds_list_add(hud_list, UI_HUD_INVENTORY_TEXT);
ds_list_add(hud_list, UI_HUD_JOURNAL_TEXT);

// Add widths to calculate max
for (i = 0; i < ds_list_size(hud_list); i++) 
{
	ds_list_add(hud_width_list, string_width(hud_list[|i]));
}

ds_list_sort(hud_width_list, true);

hud_width = hud_width_list[|ds_list_size(hud_width_list) -1];	// Last Element
hud_height = string_height(UI_HUD_EYE_TEXT);					// The string doesn't matter

hud_x = view_wport[view_current] - hud_width - UI_HUD_MARGIN;
hud_y = view_hport[view_current] - (hud_height * ds_list_size(hud_list))  - UI_HUD_MARGIN;

ds_list_destroy(hud_width_list);

journal_hud_x = view_wport[view_current] - 2 * global.screen_center_x + UI_HUD_MARGIN
journal_hud_y = view_hport[view_current] - 2 * global.screen_center_y + UI_HUD_MARGIN
countdown = room_speed * 3