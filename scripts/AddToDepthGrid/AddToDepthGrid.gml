/// @description AddToDepthGrid() Adds the calling instance to the depth grid in order to be drawn with depth

if (!ds_exists(oRenderer.depthGrid, ds_type_grid)) {
	oRenderer.depthGrid = ds_grid_create(2, 0);
}

var gridHeight = ds_grid_height(oRenderer.depthGrid);
ds_grid_resize(oRenderer.depthGrid, 2, gridHeight + 1);
ds_grid_add(oRenderer.depthGrid, 0, gridHeight, other.id);
ds_grid_add(oRenderer.depthGrid, 1, gridHeight, other.y);