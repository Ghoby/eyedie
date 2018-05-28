/// @description 

// Draw Sprite
draw_sprite_ext(spr_notebook, journal_depth, x, y , journal_scale, journal_scale, 0, -1, 1);
draw_sprite_ext(spr_key_up, journal_depth, key_x , key_y1, journal_scale, journal_scale, 0, -1, 1);
draw_sprite_ext(spr_key_down, journal_depth, key_x , key_y2, journal_scale, journal_scale, 0, -1, 1);

draw_set_color(c_black);
// Draw Text
draw_set_font(Aldrich1);

draw_text_ext(journal_write_x + 130 , journal_write_y +  lineSpacing, title, journal_margin, sprite_get_width(spr_notebook) - 2 * journal_margin);
lineSpacing += 25;

for ( i = 0; i < ds_list_size(global.journal_list); i++)
{
		current = ds_list_find_value(global.journal_list, i)
		
		menuArray[i] = current;
		
	
}

for (i = 0; i < array_length_1d(menuArray) ; i++) {
		
		if (i == 0)
			entryN = "st"
		else if (i == 1)
			entryN = "nd"
		else if (i == 2)
			entryN = "rd"
		else
			entryN = "th"
			
		if (i>=4 || array_length_1d(menuArray) <= i+page_entry) {
			break;
		}
		else{
			
			draw_text_ext(journal_write_x, journal_write_y + (i * journal_step) + lineSpacing, string(i+page_entry+1) + entryN + " Entry", journal_margin, sprite_get_width(spr_notebook) - 2 * journal_margin);
			lineSpacing+=20
			
			draw_text_ext(journal_write_x, journal_write_y + (i * journal_step) + lineSpacing, menuArray[i+page_entry], journal_margin, sprite_get_width(spr_notebook) - 2 * journal_margin);
					
				
			len = string_length(menuArray[i+page_entry]);
			size = len/30;
			lineSpacing += (size - frac(size)) * 20;
	
			lineSpacing++;
	
			//draw_text_ext(journal_write_x, journal_write_y + (i * journal_step) + lineSpacing, entrySeparation, journal_margin, sprite_get_width(spr_notebook) - 2 * journal_margin);
			draw_line_width_color(journal_write_x, journal_write_y + (i * journal_step) + lineSpacing, journal_write_x + UI_JOURNAL_SEPARATION_WIDTH, journal_write_y + (i * journal_step) + lineSpacing, 2, c_black, c_black);
		}
	
}

lineSpacing = 0;
