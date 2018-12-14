gridWidth = ceil(room_width / global.GRID_SIZE);
gridHeight = ceil(room_height / global.GRID_SIZE);

grid = ds_grid_create(gridWidth, gridHeight);
ds_grid_clear(grid, noone);

// Contains regions that have been created by the oTracking grids utility scripts, so that
// they can all be destroyed at the end of each step.
regions = ds_list_create();