/// @description Draws the overlay

// Ignore if Cyber Eye off
if (!global.is_eye_on)
{
	return;
}

draw_set_alpha(alpha);

// HUD
ext_draw_line_width_color(x, y, line_end_x, line_end_y, OVERLAY_LINE_WIDTH, color);
ext_draw_rect_color(rect_start_x, rect_start_y, rect_end_x, rect_end_y, color, false);

// Title
var text_x = rect_start_x + OVERLAY_TEXT_MARGIN;
var title_y = rect_start_y + OVERLAY_TEXT_MARGIN;

ext_draw_text_scale_color( text_x, title_y, 
	title, title_scale, OVERLAY_TEXT_COLOR);
	
// Description
if (is_description_visible) 
{
	var description_y = title_y + OVERLAY_TEXT_MARGIN + (string_height(title) * OVERLAY_TITLE_SCALE);
	draw_text_color(text_x, description_y, description, OVERLAY_TEXT_COLOR, OVERLAY_TEXT_COLOR, OVERLAY_TEXT_COLOR, OVERLAY_TEXT_COLOR, 1); 
}

draw_set_alpha(1);