var length = ds_list_size(regions);
for (var i = 0; i < length; i++) {
	var region = ds_list_find_value(regions, i);
	ds_grid_destroy(region);
}
ds_list_clear(regions);