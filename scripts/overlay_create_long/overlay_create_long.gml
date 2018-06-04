/// @description Creates long overlay.

/// @param obj_x		origin's x coord
/// @param obj_y		origin's y coord
/// @param title		overlay title
/// @param description	overlay description
/// @param color		overlay color
/// @return				overlay object

var title = argument2;
var description = argument3;

var description_lines = string_count("\n", description);

if (description_lines == 0)
{
	description_lines = 1;	
}

var rect_width = 0;
var rect_height = 0;

if (string_length(description) > OVERLAY_DESCRIPTION_MAX_CHARS)
{
	var counter = OVERLAY_DESCRIPTION_MAX_CHARS;
	rect_width = (OVERLAY_DESCRIPTION_MAX_CHARS * string_width("A")) + (2 * OVERLAY_TEXT_MARGIN);
}
else
{
	var max_width = max(string_width(title) * OVERLAY_TITLE_SCALE, string_width(description));
	rect_width = max_width + (2 * OVERLAY_TEXT_MARGIN);
}

rect_height = (string_height(title) * OVERLAY_TITLE_SCALE) + (3 * OVERLAY_TEXT_MARGIN) 
	+ (description_lines * string_height(description));
	
var inst = overlay_create(argument0, argument1, rect_width, rect_height, true, 
	OVERLAY_TITLE_SCALE, argument4, OVERLAY_ALPHA);
	
inst.title = title;
inst.description = description;
	
return inst;
