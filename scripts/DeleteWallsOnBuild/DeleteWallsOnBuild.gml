/// @description DeleteWallsOnBuild(SurroundingCells)
/// When a wall is built, this script should be run to delete excess diagonal connector walls which are 
/// currently present on the map around neighbouring oConnectables.
/// @arg SurroundingCells ds_grid of surrounding cells.
/// @arg SurroundingCells grid coordinate of created wall.
var surroundingcells = argument[0];
var gridcoordinate = argument[1];


// the script will now check the top, bottom, left and right locations for a oConnectable object. If a
// oConnectable exists, the script will delete the required diagonal connectors.
var top = [1,0];
RecalculateWallConnectorsAt(top, surroundingcells, gridcoordinate);

var bottom = [1,2];
RecalculateWallConnectorsAt(bottom, surroundingcells, gridcoordinate);

var left = [0,1];
RecalculateWallConnectorsAt(left, surroundingcells, gridcoordinate);

var right = [2,1];
RecalculateWallConnectorsAt(right, surroundingcells, gridcoordinate);