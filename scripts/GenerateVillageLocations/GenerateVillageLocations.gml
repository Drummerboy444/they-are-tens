hCentre = argument[0];
vCentre = argument[1];

var placed = false;
while(!placed){
	rndX = GetRandomInt(hCentre-5, hCentre+5);
	rndY = GetRandomInt(vCentre-5, vCentre+5);
	
	//if(CellsAreEmpty([rndX-1,rndY-1],[rndX+2, rndY+2]){
		var locations = [[rndX,rndY]];
		placed = true;
	//}
}

InsertWithGridPointList(oVillage,locations)

return locations;