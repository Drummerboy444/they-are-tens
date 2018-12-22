/// @description GetRiverSprite(surroundingCells) Returns sprite for river tile based on tiles of surrounding sprites
/// @arg surroundingCells a 3x3 grid of surrounding cell objects
var surrCells = argument[0];

var sprite = "river_";

if(surrCells[# 1,0] == oRiver || surrCells[# 1,0] == oBridge) sprite += "0";
if(surrCells[# 2,1] == oRiver || surrCells[# 2,1] == oBridge) sprite += "1";
if(surrCells[# 1,2] == oRiver || surrCells[# 1,2] == oBridge) sprite += "2";
if(surrCells[# 0,1] == oRiver || surrCells[# 0,1] == oBridge) sprite += "3";

if(asset_get_index(sprite) == -1){
	return river_0123;
}

return asset_get_index(sprite);