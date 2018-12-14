if (ds_exists(grid, ds_type_grid)) {
	ds_grid_destroy(grid);
}
if (ds_exists(regions, ds_type_list)) {
	var length = ds_list_size(regions);
	for (var i = 0; i < length; i++) {
		var region = ds_list_find_value(regions, i);
		ds_grid_destroy(region);
	}
	ds_list_destroy(regions);
}