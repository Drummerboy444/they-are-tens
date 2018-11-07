/// @description SlideTransition(resourceSupply) here is a description
/// @arg ResourceSupply the resource supply to gather from.
var resourceSupply = argument[0];

var resource = resourceSupply.resource;

resourceSupply.resourceCount--;
if (resourceSupply.resourceCount == 0) {
	instance_destroy(resourceSupply);
}
return resource;