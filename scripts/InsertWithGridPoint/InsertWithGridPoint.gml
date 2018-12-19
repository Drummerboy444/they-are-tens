/// @description InsertWithGridPoint(object, coordinate) Inserts the given object into all of the cells
/// in the tracking grid that it spans
/// @arg object the object to add
/// @arg coordinate the grid coordinate (of the top left sqaure) that the object should be added at
var object = argument[0];
var coordinate = argument[1];


 //We'll only add objects to the grid that have a sprite and are children of oTrackable
var spriteIndex = object_get_sprite(object.object_index);
if (spriteIndex > -1 && object_is_ancestor(object.object_index, oTrackable)) {
	var width = sprite_get_width(spriteIndex);
	var height = sprite_get_height(spriteIndex);
	
	var cellWidth = ceil(width / global.GRID_SIZE);
	var cellHeight = ceil(height / global.GRID_SIZE);
	
	var xStart = coordinate[0];
	var xEnd   = coordinate[0] + cellWidth - 1;
	var yStart = coordinate[1];
	var yEnd   = coordinate[1] + cellHeight - 1;
	
	with (oTrackingGrid) {
		ds_grid_set_region(grid, xStart, yStart, xEnd, yEnd, object);
	}
}