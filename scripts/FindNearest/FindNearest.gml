/// @description FindNearest(target) Finds the instance of an object or array of objects
/// @arg Target sets the object to look for the nearest instance of.
var targets = ToArray(argument[0]);

var nearest = noone;
var nearestDistance = room_height + room_width;
for (i = 0; i < array_length_1d(targets); i++) {
	var instanceToCheck = instance_nearest(other.x, other.y, targets[i]);
	if (instanceToCheck != noone) {
		var distanceToCheck = point_distance(other.x, other.y, instanceToCheck.x, instanceToCheck.y)
		if (distanceToCheck < nearestDistance) {
			nearest = instanceToCheck;
			nearestDistance = distanceToCheck;
		}
	}
}
return nearest;
