/// @description RemoveWithGameCoordinate(object, gameCoordinate) Removes the given object from all of
/// the cells in the tracking grid that it spans
/// @arg object the object to remove
/// @arg coordinate the game coordinate that the object exists at
var object = argument[0];
var coordinate = argument[1];


//We'll only remove objects from the grid that have a sprite
var spriteIndex = object_get_sprite(object);
if (spriteIndex > -1) {
	var width = sprite_get_width(spriteIndex);
	var height = sprite_get_height(spriteIndex);

	var leftSide = coordinate[0] - (width / 2);
	var _x = floor(leftSide / global.GRID_SIZE);

	var topSide = coordinate[1] - (height / 2);
	var _y = floor(topSide / global.GRID_SIZE);

	RemoveWithGridPoint(object, [_x, _y]);
}
