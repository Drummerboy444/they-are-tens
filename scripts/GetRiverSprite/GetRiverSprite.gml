/// @description GetRiverSprite(surroundingCells) Returns sprite for river tile based on tiles of surrounding sprites
/// @arg surroundingCells a 3x3 grid of surrounding cell objects
var surroundingCells = argument[0];

var sprite = "river_";

if(surroundingCells[# 1,0] == oRiver) sprite += "0";
if(surroundingCells[# 2,1] == oRiver) sprite += "1";
if(surroundingCells[# 1,2] == oRiver) sprite += "2";
if(surroundingCells[# 0,1] == oRiver) sprite += "3";

if(asset_get_index(sprite) == -1){
	return river_0123;
}

return asset_get_index(sprite);