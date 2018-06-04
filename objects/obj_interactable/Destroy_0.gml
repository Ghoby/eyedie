/// @description Unregist Interactable

instance_destroy(long_overlay);
instance_destroy(short_overlay);

var index = ds_list_find_index(global.interacts_regist, self);
ds_list_delete(global.interacts_regist, index);