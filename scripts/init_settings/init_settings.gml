window_set_caption("Eye Die");
display_set_gui_size(view_wport[0], view_hport[0]);

// Camera Status
camera = camera_get_active();

camera_width = camera_get_view_width(camera);
camera_height = camera_get_view_height(camera);

window_width = window_get_width();
window_height = window_get_height();

global.screen_center_x = window_get_width() / 2;
global.screen_center_y = window_get_height() / 2;

global.viewport_ratio = (window_width * window_height) / (camera_width * camera_height);

// Rooms Settings
global.room_limits_map = ds_map_create();

ds_map_add(global.room_limits_map, room_city, [ROOM_CITY_MIN, ROOM_CITY_MAX]);
ds_map_add(global.room_limits_map, room_alley, [ROOM_ALLEY_MIN, ROOM_ALLEY_MAX]);
ds_map_add(global.room_limits_map, room_bar, [ROOM_BAR_MIN, ROOM_BAR_MAX]);
ds_map_add(global.room_limits_map, room_city2, [ROOM_CITY2_MIN, ROOM_CITY2_MAX]);
ds_map_add(global.room_limits_map, room_apartment_lobby, [ROOM_APART_LOBBY_MIN, ROOM_APART_LOBBY_LIMIT]);
ds_map_add(global.room_limits_map, room_apartment_corridor, [ROOM_APART_CORR_MIN, ROOM_APART_CORR_MAX]);
ds_map_add(global.room_limits_map, room_apartment_room25, [ROOM_APART_ROOM_MIN, ROOM_APART_ROOM_MAX]);
ds_map_add(global.room_limits_map, room_alley2, [ROOM_ALLEY2_MIN, ROOM_ALLEY2_MAX]);

// 
