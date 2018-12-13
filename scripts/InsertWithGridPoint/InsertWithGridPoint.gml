/// @description InsertWithGridPoint(object, coordinates) Inserts the given object into all of the cells
/// is spans at the given grid coordinate
/// @arg object the object to add
/// @arg coordinates the grid coordinates (of the top left sqaure) that the building should be added at
var object = argument[0];
var coordinates = argument[1];


 //We'll only add objects to the grid that have a sprite
var spriteIndex = object_get_sprite(object);
if (spriteIndex > -1) {
	var cellWidth = ceil(object.sprite_width / global.GRID_SIZE);
	var cellHeight = ceil(object.sprite_height / global.GRID_SIZE);
	
	var xStart = coordinates[0];
	var xEnd   = coordinates[0] + cellWidth - 1;
	var yStart = coordinates[1];
	var yEnd   = coordinates[1] + cellHeight - 1;
	
	with (oTrackingGrid) {
		ds_grid_set_region(grid, xStart, yStart, xEnd, yEnd, object);
	}
}