/// @description SelectVillager(possibleSelections) Deselects all instances of all objects in possible selections
/// @arg possibleSelections all possible objects that can be selected
var possibleSelections = argument[0];

for(i=0; i<array_length_1d(possibleSelections); i++){
	with (possibleSelections[i]) {
		selected = false;
	}
}