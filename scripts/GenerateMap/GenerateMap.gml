/// @description GenerateMap() Generates a map

hNumCells = floor(room_width/16)-1;
hCentre = floor(room_width/32);

vNumCells = floor(room_height/16)-1;
vCentre = floor(room_height/32);

numRockPatches = 10;
numBushPatches = 10;
numTreePatches = 300;

var objectLocations = ds_map_create();

ds_map_add(objectLocations, oVillage, GenerateVillageLocations());

ds_map_add(objectLocations, oVillager, GenerateVillagerLocations());

ds_map_add(objectLocations, oSpearman, [[hCentre+3,vCentre+3]]);

ds_map_add(objectLocations, oEnemy, [[1, 9]]);

ds_map_add(objectLocations, oRock, GenerateLocationPatches(oRock,numRockPatches));
ds_map_add(objectLocations, oBush, GenerateLocationPatches(oBush,numBushPatches));
ds_map_add(objectLocations, oTree, GenerateLocationPatches(oTree,numTreePatches));

return objectLocations;