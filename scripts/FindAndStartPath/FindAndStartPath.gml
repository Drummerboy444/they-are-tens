/// @description FindAndStartPath(start, end, path, walkSpeed) Creates and starts a path from the start
/// location to the end location within the grid
/// @arg startCoordinate the start game coordinate
/// @arg endCoordinate the end game coordinate
/// @arg path the path that the new path should be created in
/// @arg walkSpeed the speed to move the object along the path at
var startCoordinate = argument[0];
var endCoordinate = argument[1];
var path = argument[2];
var walkSpeed = argument[3];


if (!object_is_ancestor(self.object_index, oUnit)) {
	// Only units can path
	return;
}
var xStart = startCoordinate[0];
var yStart = startCoordinate[1];
var xEnd = endCoordinate[0];
var yEnd = endCoordinate[1];
if (mp_grid_path(oGrid.grid, path, xStart, yStart, xEnd, yEnd, true)) {
	path_start(path, walkSpeed, path_action_stop, true);
}