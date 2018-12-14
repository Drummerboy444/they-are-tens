/// @description CreateGlobals(objectArray) A helper script that creates the objects in the given array at (0, 0)
/// @arg objectArray the array of objects to create
var objectArray = argument[0];


var length = array_length_1d(objectArray);
for (i = 0; i < length; i++) {
	var object = objectArray[i];
	instance_create_layer(0, 0, oGameController.defaultLayer, object);
}