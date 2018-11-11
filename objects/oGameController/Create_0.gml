enum VillagerMode {
	gathering,
	depositing,
	returning,
	leaving,
	idle
}

// A map that we can use to lookup where each resource can be dropped off
// key:   Resource
// value: array of buildings
resourceDropOffMap = ds_map_create();
ds_map_add(resourceDropOffMap, oWood, [oVillage, oLumberMill]);
ds_map_add(resourceDropOffMap, oStone, [oVillage]);

// Layers
layers = ds_map_create();
ds_map_add(layers, oWood, "Globals");
ds_map_add(layers, oStone, "Globals");
ds_map_add(layers, oUI, "Globals");
ds_map_add(layers, oVillagerSelect, "Globals");
ds_map_add(layers, oTree, "Resources");
ds_map_add(layers, oRock, "Resources");
ds_map_add(layers, oVillage, "Buildings");
ds_map_add(layers, oLumberMill, "Buildings");
ds_map_add(layers, oVillager, "Villagers");

// Initialise global objects
globalObjects = ds_map_create();
ds_map_add(globalObjects, oWood, [[0, 0]]);
ds_map_add(globalObjects, oStone, [[0, 0]]);
ds_map_add(globalObjects, oUI, [[0, 0]]);
ds_map_add(globalObjects, oVillagerSelect, [[0, 0]]);
CreateInstances(globalObjects);

// Initialise game objects
gameObjects = ds_map_create();
ds_map_add(gameObjects, oVillage, [[7, 4]]);
ds_map_add(gameObjects, oVillager, [[7, 4]]);
ds_map_add(gameObjects, oRock, [[3, 2], [3, 3], [4, 2]]);
ds_map_add(gameObjects, oTree, [[11, 6], [12, 6], [13, 6], [12, 7], [13, 7]]);
CreateInstances(gameObjects);