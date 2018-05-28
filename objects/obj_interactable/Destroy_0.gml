/// @description Unregist Interactable

var index = ds_list_find_index(global.interacts_regist, self);
ds_list_delete(global.interacts_regist, index);