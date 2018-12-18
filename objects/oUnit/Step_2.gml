// We only create the path after any other event has had the chance to change the target
if (target != noone) {
	if (mp_grid_path(oGrid.grid, path, x, y, target[0], target[1], true)) {
		path_start(path, 1, path_action_stop, true);
	}
}
