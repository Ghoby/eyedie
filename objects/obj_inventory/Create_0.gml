/// @description Notebook Init

inventory_up = false;
inventory_scale = 1;
inventory_depth = -1;
inventory_step = 20;
inventory_margin = 20;

visible = false;

x = global.screen_center_x - 150; 
y = global.screen_center_y - 105;

inventory_write_x = x - (sprite_get_width(spr_notebook) * inventory_scale / 2) + inventory_margin;
inventory_write_y = y - (sprite_get_height(spr_notebook) * inventory_scale / 2) + inventory_margin;
lineSpacing = 0;
title = "Inventory";
entrySeparation = "-----------------------------------";
