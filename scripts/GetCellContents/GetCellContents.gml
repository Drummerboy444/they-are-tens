/// @description GetCellContents(gridCoordinate) Returns the contents of the given cell in the tracking grid
/// @arg gridCoordinate the grid coordinate to check
var gridCoordinate = argument[0];


return ds_grid_get(oTrackingGrid.grid, gridCoordinate[0], gridCoordinate[1]);