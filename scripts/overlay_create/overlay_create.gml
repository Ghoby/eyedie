/// @description Creates everything to draw the overlay and stores it in an array.

/// @param obj_x					origin x coord
/// @param obj_y					origin y coord
/// @param rect_width				width for overlay rectangle
/// @param rect_height				height for overlay rectangle
/// @param is_description_visible	boolean that defines if description is visible
/// @param title_scale				scale title text
/// @param color					overlay color
/// @param alpha					overlay alpha

var obj_x = argument0;
var obj_y = argument1;
var rect_width = argument2;
var rect_height = argument3;

var inst = instance_create_depth(obj_x, obj_y, OVERLAY_DEPTH, obj_overlay);

// ---

var room_centerx = room_width * 0.5;
var room_centery = room_height * 0.5;

var overlay_dirx = 1;
var overlay_diry = 1;

// Apply directions
if (obj_x > room_centerx)
{
	overlay_dirx = -1;
}

if (obj_y > room_centery)
{
	overlay_diry = -1;
}

// Calc Line
inst.x = obj_x + (OVERLAY_ORIGIN_MARGIN * overlay_dirx);
inst.y = obj_y + (OVERLAY_ORIGIN_MARGIN * overlay_diry);

inst.line_end_x = inst.x + (OVERLAY_LINE_LENGTH * overlay_dirx);
inst.line_end_y = inst.y + (OVERLAY_LINE_LENGTH * overlay_diry);

// Calc Rect
if (overlay_dirx < 0)
{
	inst.rect_start_x = inst.line_end_x - rect_width;
	inst.rect_end_x = inst.line_end_x;
}
else
{
	inst.rect_start_x = inst.line_end_x;
	inst.rect_end_x = inst.line_end_x + rect_width;
}

if (overlay_diry < 0)
{
	inst.rect_start_y = inst.line_end_y - rect_height;
	inst.rect_end_y = inst.line_end_y;
}
else
{
	inst.rect_start_y = inst.line_end_y;
	inst.rect_end_y = inst.line_end_y + rect_height;
}

inst.is_description_visible = argument4;
inst.title_scale = argument5;
inst.color = argument6;
inst.alpha = argument7;

return inst;



