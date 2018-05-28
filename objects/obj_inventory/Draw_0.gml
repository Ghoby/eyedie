/// @description 

// Draw Sprite
draw_sprite_ext(spr_notebook, inventory_depth, x, y, inventory_scale, inventory_scale, 0, -1, 1);
draw_set_color(c_black);
// Draw Text
draw_set_font(Aldrich);

draw_text_ext(inventory_write_x + 130 , inventory_write_y +  lineSpacing, title, inventory_margin, sprite_get_width(spr_notebook) - 2 * inventory_margin);
lineSpacing += 25;
for ( i = 0; i < ds_list_size(global.inventory_list); i++)
{
	
	current = ds_list_find_value(global.inventory_list, i)
	draw_text_ext(inventory_write_x, inventory_write_y + (i * inventory_step) + lineSpacing, current, inventory_margin, sprite_get_width(spr_notebook) - 2 * inventory_margin);
	draw_sprite_ext(cup_holder, -1, inventory_write_x + 250, inventory_write_y + 15, 1, 1, 0, c_white, 1);
	//Muita martelado but quick fix
	if (string_length(current) > 30){
		lineSpacing += 25;
	}
	if (string_length(current) > 60){
		lineSpacing += 25;
	}
	if (string_length(current) > 90){
		lineSpacing += 25;
	}
	
	
	
	lineSpacing+=25;
	
	draw_text_ext(inventory_write_x, inventory_write_y + (i * inventory_step) + lineSpacing, entrySeparation, inventory_margin, sprite_get_width(spr_notebook) - 2 * inventory_margin);
}

lineSpacing = 0;