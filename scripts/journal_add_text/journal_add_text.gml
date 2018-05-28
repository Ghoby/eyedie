/// journal_add_text(obj_item)

	if (ds_list_find_index(global.journal_list, argument0.journalText) == -1) {
		ds_list_add(global.journal_list, argument0.journalText);
		global.toggleJournalUpdate = true;
	}


/// inventory_add_item(obj_item)

