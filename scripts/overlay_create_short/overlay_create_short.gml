/// @description creates short overlay

/// @param obj_x	origin object x coord
/// @param obg_y	origin object y coord
/// @param title	overlay title
/// @param color	overlay color
/// @return			overlay object
 
var title = argument2;

var rect_width = (string_width(title) * OVERLAY_TITLE_SCALE_SHORT) + (OVERLAY_TEXT_MARGIN * 2);
var rect_height = (string_height(title) * OVERLAY_TITLE_SCALE_SHORT) + (OVERLAY_TEXT_MARGIN * 2);

var inst = overlay_create(argument0, argument1, rect_width, rect_height, false, 
	OVERLAY_TITLE_SCALE_SHORT, argument3, OVERLAY_ALPHA_SHORT);

inst.title = title;

return inst;