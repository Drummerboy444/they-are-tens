/// @description SlideTransition(target, travelSpeed) here is a description
/// @arg Target sets the target.
/// @arg TravelSpeed the speed to travel towards the target
var target = argument[0];
var travelSpeed = argument[1];

var angle = point_direction(other.x, other.y, target.x, target.y);
var xSpeed = lengthdir_x(travelSpeed, angle);
var ySpeed = lengthdir_y(travelSpeed, angle);

if (point_distance(other.x, other.y, target.x, target.y) < travelSpeed) {
	other.x = target.x;
	other.y = target.y;
	return true;
} else {
	other.x += xSpeed;
	other.y += ySpeed;
	return false;
}