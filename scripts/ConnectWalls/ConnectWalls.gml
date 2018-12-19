/// @description ConnectWalls(SurroundingCells, VerticalWallObject, HorizontalWallObject, ForwardsDiagonalObject, BackwardsDiagonalObject, ConnectingWall)
/// Checks surrounding cells and builds a connecting wall if required.
/// @arg SurroundingCells ds_grid of surrounding cells.
/// @arg VerticalWallObject the object which represents a vertical wall.
/// @arg HorizontalWallObject the object which represents a horizontal wall.
/// @arg ForwardsDiagonalObject the object which represents a fowards diagonal wall.
/// @arg BackwardsDiagonalObject the object which represents a backwards diagonal wall.
/// @arg ConnectingWalls ds_grid to be filled when a connecting wall is built from the object.
var surroundingcells = argument[0];
var verticalWallObject = argument[1];
var horizontalWallObject = argument[2];
var forwardsDiagonalObject = argument[3];
var backwardsDiagonalObject = argument[4];
var connectingwalls = argument[5];


// Verticals and horizontals
ConnectWall(surroundingcells, [1,0], verticalWallObject, connectingwalls);
ConnectWall(surroundingcells, [0,1], horizontalWallObject, connectingwalls);
ConnectWall(surroundingcells, [2,1], horizontalWallObject, connectingwalls);
ConnectWall(surroundingcells, [1,2], verticalWallObject, connectingwalls);

// Diagonals
ConnectDiagonalWalls(surroundingcells, forwardsDiagonalObject, backwardsDiagonalObject, connectingwalls);