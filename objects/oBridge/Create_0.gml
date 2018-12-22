var gridCoordinate = GetGridCoordinate([x,y]);
if(GetCellContents([gridCoordinate[0],gridCoordinate[1]+1]) == oRiver){
	sprite_index = hWoodenBridge;	
}