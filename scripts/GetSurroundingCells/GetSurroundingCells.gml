/// @description GetSurroundingCells(gridCoordinate) returns a 3x3 grid with the grid coordinate at the center
/// and the surrounding cells representing the state of the surrounding cells in the tracking grid. This object
/// must be used immediately after calling this script as it will be deleted by the oTrackingGrid at the end
/// of the step.
/// @arg gridCoordinate the grid coordinate to get the surrounding cells from
var gridCoordinate = argument[0];


var region = ds_grid_create(3, 3);
ds_grid_clear(region, noone);

var _x = gridCoordinate[0];
var _y = gridCoordinate[1];

for (var i = -1; i <= 1; i++) {
	for (var j = -1; j <= 1; j++) {
		if (
			_x + i >= 0 &&
			_x + i < oTrackingGrid.gridWidth &&
			_y + j >= 0 &&
			_y + j < oTrackingGrid.gridHeight
		) {
			var cellContents = ds_grid_get(oTrackingGrid.grid, _x + i, _y + j);
			ds_grid_set(region, i + 1, j + 1, cellContents);
		}
	}
}

ds_list_add(oTrackingGrid.regions, region);
return region;