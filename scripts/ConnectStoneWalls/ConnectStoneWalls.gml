/// @description ConnectStoneWalls(SurroundingCells) Checks surrounding cells and builds a connecting wall
/// if required.
/// @arg SurroundingCells ds_grid of surrounding cells.
var surroundingcells = argument[0];


// Verticals and horizontals
ConnectStoneWall(surroundingcells, [1,0], oStoneWallVertical);
ConnectStoneWall(surroundingcells, [0,1], oStoneWallHorizontal);
ConnectStoneWall(surroundingcells, [2,1], oStoneWallHorizontal);
ConnectStoneWall(surroundingcells, [1,2], oStoneWallVertical);

// Diagonals
ConnectStoneWall(surroundingcells, [2,0], oStoneWallForwardsDiagonal);
ConnectStoneWall(surroundingcells, [0,2], oStoneWallForwardsDiagonal);
ConnectStoneWall(surroundingcells, [2,2], oStoneWallBackwardsDiagonal);
ConnectStoneWall(surroundingcells, [0,0], oStoneWallBackwardsDiagonal);