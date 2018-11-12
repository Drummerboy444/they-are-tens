/// @description SlideTransition(object, travelSpeed) here is a description
/// @arg Object the object to be moved using WASD.
/// @arg TravelSpeed the speed to travel towards at.
var object = argument[0];
var travelSpeed = argument[1];

object.x += (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * travelSpeed;
object.y += (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * travelSpeed;