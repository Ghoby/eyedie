/// @description Regist Interactable

description = string_split_line(description, OVERLAY_DESCRIPTION_MAX_CHARS);

// Create Overlays
long_overlay = overlay_create_long(x, y, title, description, OVERLAY_BACK_COLOR);
short_overlay = overlay_create_short(x, y, title, OVERLAY_BACK_COLOR);

ds_list_add(global.interacts_regist, self);