/// @description SlideTransition(resourceSupply) here is a description
/// @arg ResourceSupply the resource supply to gather from.
var resourceSupply = argument[0];

var resource = resourceSupply.resource;

resourceSupply.resourceCount--;
// Sets the image index depending on how many of the resources are gone and how many frames the supply
// sprite has, so if a supply has 10 resources and 3 frames it will slowly cycle through those frames
// as its resources deplete
var spriteFrameCount = sprite_get_number(resourceSupply.sprite_index);
var resourcesGone = resourceSupply.maxResourceCount - resourceSupply.resourceCount;
resourceSupply.image_index = floor(resourcesGone * spriteFrameCount / resourceSupply.maxResourceCount);

if (resourceSupply.resourceCount == 0) {
	RemoveWithGameCoordinate(resourceSupply.object_index, [resourceSupply.x, resourceSupply.y]);
	instance_destroy(resourceSupply);
	GridReset();
}
return resource;