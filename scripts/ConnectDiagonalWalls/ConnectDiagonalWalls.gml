/// @description ConnectDiagonalWall(SurroundingCells, ForwardsDiagonalObject, BackwardsDiagonalObject, ConnectingWalls)
/// Builds diagonal connector object based on the referenced surroundingcell and input wall objects.
/// @arg SurroundingCells ds_grid of the surrounding cells.
/// @arg ForwardsDiagonalObject the object which represents a fowards diagonal wall.
/// @arg BackwardsDiagonalObject the object which represents a backwards diagonal wall.
/// @arg ConnectingWalls ds_grid to be filled when a connecting wall is built from the object.
var surroundingcells = argument[0];
var forwardsDiagonal = argument[1];
var backwardsDiagonal = argument[2];
var connectingwalls = argument[3];


// top left wall
var cellContents_topLeft = [0, 0];
var checkcontents_topMiddle = surroundingcells[# 1, 0];
var checkcontents_middleLeft = surroundingcells[# 0, 1];
DiagonalPlacementCheck(surroundingcells, cellContents_topLeft, backwardsDiagonal, checkcontents_middleLeft, checkcontents_topMiddle, connectingwalls);

// top right wall
var cellContents_topRight = [2, 0];
	// topMiddle
var checkcontents_middleRight = surroundingcells[# 2, 1];
DiagonalPlacementCheck(surroundingcells, cellContents_topRight, forwardsDiagonal, checkcontents_topMiddle, checkcontents_middleRight, connectingwalls);

// bottom left wall
var cellContents_bottomLeft = [0, 2];
var checkcontents_bottomMiddle = surroundingcells[# 1, 2];
	// middleLeft
DiagonalPlacementCheck(surroundingcells, cellContents_bottomLeft, forwardsDiagonal, checkcontents_bottomMiddle, checkcontents_middleLeft, connectingwalls);

// bottom right wall
var cellContents_bottomRight = [2, 2];
	// bottomMiddle
var checkcontents_middleRight = surroundingcells[# 2, 1];
DiagonalPlacementCheck(surroundingcells, cellContents_bottomRight, backwardsDiagonal, checkcontents_bottomMiddle, checkcontents_middleRight, connectingwalls);