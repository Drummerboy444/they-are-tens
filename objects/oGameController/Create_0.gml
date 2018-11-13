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
ds_map_add(layers, oBuilder, "Globals");
ds_map_add(layers, oCamera, "Globals");
ds_map_add(layers, oTree, "Resources");
ds_map_add(layers, oRock, "Resources");
ds_map_add(layers, oVillage, "Buildings");
ds_map_add(layers, oLumberMill, "Buildings");
ds_map_add(layers, oVillager, "Villagers");

// Sprites
sprites = ds_map_create();
ds_map_add(sprites, oWood, "");
ds_map_add(sprites, oStone, "");
ds_map_add(sprites, oUI, "");
ds_map_add(sprites, oBuilder, "");
ds_map_add(sprites, oCamera, "");
ds_map_add(sprites, oTree, sTree);
ds_map_add(sprites, oRock, sRock);
ds_map_add(sprites, oVillage, sVillage);
ds_map_add(sprites, oLumberMill, sLumberMill);
ds_map_add(sprites, oVillager, sVillager);

// Initialise global objects
globalObjects = ds_map_create();
ds_map_add(globalObjects, oWood, [[0, 0]]);
ds_map_add(globalObjects, oStone, [[0, 0]]);
ds_map_add(globalObjects, oUI, [[0, 0]]);
ds_map_add(globalObjects, oVillagerSelect, [[0, 0]]);
ds_map_add(globalObjects, oBuilder, [[0, 0]]);
ds_map_add(globalObjects, oCamera, [[0, 0]]);
CreateInstances(globalObjects);

// Initialise game objects
gameObjects = ds_map_create();
ds_map_add(gameObjects, oVillage, [[7, 4]]);
ds_map_add(gameObjects, oVillager, [[7, 4], [1, 2]]);
ds_map_add(gameObjects, oRock, [[3, 2], [3, 3], [4, 2]]);
ds_map_add(gameObjects, oTree, [[11, 6], [12, 6], [13, 6], [12, 7], [13, 7]]);
CreateInstances(gameObjects);