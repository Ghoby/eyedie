
/// inventory_add_item(obj_item)

	if (ds_list_find_index(global.inventory_list, argument0.myName) == -1) {
		ds_list_add(global.inventory_list, argument0.myName);
	}
