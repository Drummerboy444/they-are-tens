/// @description recalculateWallConnectorsAt(Location)
/// Looks up a given grid location for a oConnectable and deletes 2 connectors at the specificed locations.
/// @arg Location ds_grid location to lookup a oConnectable.
/// @arg SurroundingCells ds_grid of surrounding cells.
/// @arg SurroundingCells grid coordinate of created wall.
var location = argument[0];
var surroundingcells = argument[1];
var gridcoordinate = argument[2];


var cellContents = surroundingcells[# location[0], location[1]];
if(cellContents != noone && object_is_ancestor(cellContents.object_index, oConnectable)){
	var rebuild_x = gridcoordinate[0] + location[0] -1;
	var rebuild_y = gridcoordinate[1] + location[1] -1;
	var rebuildWall = oGrid.grid[# rebuild_x, rebuild_y];
	show_debug_message(rebuildWall);
	var rebuildWallClass = rebuildWall.object_index;
	//if(rebuildWall.connectingwalls[# 0, 0] != noone){ instance_destroy(rebuildWall.connectingwalls[# 0, 0]); }
	//if(rebuildWall.connectingwalls[# 1, 0] != noone){ instance_destroy(rebuildWall.connectingwalls[# 1, 0]); }
	//if(rebuildWall.connectingwalls[# 2, 0] != noone){ instance_destroy(rebuildWall.connectingwalls[# 2, 0]); }
	//if(rebuildWall.connectingwalls[# 0, 1] != noone){ instance_destroy(rebuildWall.connectingwalls[# 0, 1]); }
	//if(rebuildWall.connectingwalls[# 2, 1] != noone){ instance_destroy(rebuildWall.connectingwalls[# 2, 1]); }
	//if(rebuildWall.connectingwalls[# 0, 2] != noone){ instance_destroy(rebuildWall.connectingwalls[# 0, 2]); }
	//if(rebuildWall.connectingwalls[# 1, 2] != noone){ instance_destroy(rebuildWall.connectingwalls[# 1, 2]); }
	//if(rebuildWall.connectingwalls[# 2, 2] != noone){ instance_destroy(rebuildWall.connectingwalls[# 2, 2]); }
	//instance_destroy(rebuildWall);
	//ConstructBuilding(rebuildWallClass, [rebuild_x, rebuild_y])
}