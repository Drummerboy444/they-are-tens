/// @description GenerateMap() Generates a map

var hNumCells = floor(room_width/global.GRID_SIZE)-1;
var hCentre = floor(room_width/(global.GRID_SIZE*2));

var vNumCells = floor(room_height/global.GRID_SIZE)-1;
var vCentre = floor(room_height/(global.GRID_SIZE*2));

var numRivers = 4;
var numRockPatches = 10;
var numBushPatches = 10;
var numTreePatches = 200;

var objectLocations = ds_map_create();

ds_map_add(objectLocations, oRiver, GenerateRivers(numRivers));

var villageLocations = GenerateVillageLocations(hCentre,vCentre)
ds_map_add(objectLocations, oVillage, villageLocations);

ds_map_add(objectLocations, oVillager, GenerateVillagerLocations(villageLocations));

ds_map_add(objectLocations, oSpearman, [[hCentre+3,vCentre+3]]);

ds_map_add(objectLocations, oEnemy, [[1, 9]]);

ds_map_add(objectLocations, oRock, GenerateLocationPatches(oRock,numRockPatches,hNumCells,hCentre,vNumCells,vCentre));
ds_map_add(objectLocations, oBush, GenerateLocationPatches(oBush,numBushPatches,hNumCells,hCentre,vNumCells,vCentre));
ds_map_add(objectLocations, oTree, GenerateLocationPatches(oTree,numTreePatches,hNumCells,hCentre,vNumCells,vCentre));

//ClearTrackingGrid();

return objectLocations;