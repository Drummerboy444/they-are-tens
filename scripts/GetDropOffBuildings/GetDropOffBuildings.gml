/// @description GetDropOffBuildings(resource) Returns an array of buildings that the resource in question
///                                        can be dropped off at. This will return an empty array if
///                                        no such building exists.
/// @arg Resource resource to deposit.
var resource = argument[0];

var buildings = ds_map_find_value(oGameController.resourceDropOffMap, resource);
return buildings == undefined ? [] : buildings;