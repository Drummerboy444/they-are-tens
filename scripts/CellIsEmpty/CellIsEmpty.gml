/// @description CellIsEmpty(gridCoordinate) Returns true or false if the given cell in the
/// tracking grid is empty
/// @arg gridCoordinate the grid coordinate to check
var gridCoordinate = argument[0];


var cellContents = ds_grid_get(oTrackingGrid.grid, gridCoordinate[0], gridCoordinate[1]);
return cellContents == noone;