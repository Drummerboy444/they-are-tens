/// @description AddToDepthGrid() Adds the calling instance to the depth grid in order to be drawn with depth
if (!ds_exists(oRenderer.depthGrid, ds_type_grid)) {
	oRenderer.depthGrid = ds_grid_create(2, 0);
}

var name = object_get_name(other.object_index);
// a small value to be added to the y value of the object in the depth grid, this is so that object on the same
// pixel will be drawn according the their drawPriority in the oRenderer. For example a villager will always be drawn
// on top of a rock if they are both at the same depth.
var objectImportance = ds_list_find_index(oRenderer.drawPriority, name) / ds_list_size(oRenderer.drawPriority);
var depthValue = other.y + (other.sprite_height / 2) + objectImportance;

var gridHeight = ds_grid_height(oRenderer.depthGrid);
ds_grid_resize(oRenderer.depthGrid, 2, gridHeight + 1);
ds_grid_add(oRenderer.depthGrid, 0, gridHeight, other.id);
ds_grid_add(oRenderer.depthGrid, 1, gridHeight, depthValue);