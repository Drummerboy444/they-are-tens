/// @description CellOnBoundary(location) Asserts whether cell is on the boundary
/// @arg location the [x,y] location of the cell in the grid
var location = argument[0];

return (
		location[0] == 0
		|| location[0] == oTrackingGrid.gridWidth
		|| location[1] == 0
		|| location[1] == oTrackingGrid.gridHeight - 1
)