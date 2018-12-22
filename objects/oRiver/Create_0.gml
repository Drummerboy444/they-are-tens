/// @description Insert description here
// You can write your code in this editor
var gridCoordinate = GetGridCoordinate([x,y]);
var surroundingCells = GetSurroundingCells(gridCoordinate);
if(gridCoordinate[0] == 0) surroundingCells[# 0,1] = oRiver;
if(gridCoordinate[0] == oTrackingGrid.gridWidth-1) surroundingCells[# 2,1] = oRiver;
if(gridCoordinate[1] == 0) surroundingCells[# 1,0] = oRiver;
if(gridCoordinate[1] == oTrackingGrid.gridHeight-1) surroundingCells[# 1,2] = oRiver;
sprite_index = GetRiverSprite(surroundingCells);

if(GetRandomInt(1,20) == 1 &&
	(sprite_index == river_02 || sprite_index == river_13)){
	instance_create_layer(x,y,oGameController.defaultLayer,oBridge);
	RemoveWithGridPoint(oRiver,gridCoordinate);
	InsertWithGridPoint(oBridge,gridCoordinate);
	instance_destroy();
}

// Inherit the parent event
event_inherited();

