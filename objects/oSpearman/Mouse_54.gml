var centerX = (floor(mouse_x / global.GRID_SIZE) * global.GRID_SIZE) + (global.GRID_SIZE / 2);
var centerY = (floor(mouse_y / global.GRID_SIZE) * global.GRID_SIZE) + (global.GRID_SIZE / 2);

if (mp_grid_path(oGrid.grid, path, x, y, centerX, centerY, true)) {
	path_start(path, 1, path_action_stop, true);
}
