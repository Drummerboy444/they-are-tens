// Inherit the parent event
event_inherited();

// Check surroundings for other walls to connect to
connectingwalls = ds_grid_create(3,3);
ds_grid_clear(connectingwalls, noone);

var gridcoordinate = GetGridCoordinate([x,y]);

var surroundingcells = GetSurroundingCells(gridcoordinate);

ConnectStoneWalls(surroundingcells);