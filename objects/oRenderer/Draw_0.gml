// Sort the depth grid
ds_grid_sort(depthGrid, 1, true);

// Draw the objects in the depth grid from "farthest" object to "nearest" (lowest y val to highest y val)
for(var i = 0; i < ds_grid_height(depthGrid); i++) {
	var object = ds_grid_get(depthGrid, 0, i);
	with (object) draw_self();
}

// Destroy the depth grid
ds_grid_destroy(depthGrid);