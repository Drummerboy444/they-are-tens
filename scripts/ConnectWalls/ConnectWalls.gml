/// @description ConnectWalls(SurroundingCells, VerticalWallObject, HorizontalWallObject, ForwardsDiagonalObject, BackwardsDiagonalObject)
/// Checks surrounding cells and builds a connecting wall if required.
/// @arg SurroundingCells ds_grid of surrounding cells.
/// @arg VerticalWallObject the object which represents a vertical wall.
/// @arg HorizontalWallObject the object which represents a horizontal wall.
/// @arg ForwardsDiagonalObject the object which represents a fowards diagonal wall.
/// @arg BackwardsDiagonalObject the object which represents a backwards diagonal wall.
var surroundingcells = argument[0];
var verticalWallObject = argument[1];
var horizontalWallObject = argument[2];
var forwardsDiagonalObject = argument[3];
var backwardsDiagonalObject = argument[4];


// Verticals and horizontals
ConnectWall(surroundingcells, [1,0], verticalWallObject);
ConnectWall(surroundingcells, [0,1], horizontalWallObject);
ConnectWall(surroundingcells, [2,1], horizontalWallObject);
ConnectWall(surroundingcells, [1,2], verticalWallObject);

// Diagonals
ConnectDiagonalWalls(surroundingcells, forwardsDiagonalObject, backwardsDiagonalObject);