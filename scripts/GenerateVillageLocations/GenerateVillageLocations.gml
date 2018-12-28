hCentre = argument[0];
vCentre = argument[1];

var placed = false;
while(!placed){
	rndX = GetRandomInt(hCentre-8, hCentre+6);
	rndY = GetRandomInt(vCentre-8, vCentre+6);
	
	if(CellsAreEmpty([rndX-1,rndY-1],[rndX+2, rndY+2])){
		var locations = [[rndX,rndY]];
		placed = true;
	}
}

InsertWithGridPointList(oVillage,locations)

return locations;