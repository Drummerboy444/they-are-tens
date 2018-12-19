/// @description Insert description here
// You can write your code in this editor
var gridCoordinate = GetGridCoordinate([x,y]);
var surroundingCells = GetSurroundingCells(gridCoordinate);
sprite_index = GetRiverSprite(surroundingCells);

// Inherit the parent event
event_inherited();

