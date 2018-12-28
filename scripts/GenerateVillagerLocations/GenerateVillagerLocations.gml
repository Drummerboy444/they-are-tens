var villageLocations = argument[0];

var villageLocation = villageLocations[0];

var vilX = villageLocation[0];
var vilY = villageLocation[1];

var locations = [
	[vilX+2,vilY],
	[vilX,vilY+2],
	[vilX-1,vilY]
];

return locations;