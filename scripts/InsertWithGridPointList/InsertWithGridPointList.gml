/// @description InsertWithGridPoint(object, coordinateList) Inserts the given object into all of the cells
/// in the tracking grid that it spans
/// @arg object the object to add
/// @arg coordinateList list of top-Left-Square locations of the object
var object = argument[0];
var coordinateList = argument[1];

for(i = 0; i < array_length_1d(coordinateList); i++){
	InsertWithGridPoint(object,coordinateList[i]);	
}