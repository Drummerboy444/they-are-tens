enum VillagerMode {
	gathering,
	depositing,
	returning,
	leaving,
	idle
}

enum EnemyMode {
	movingToTarget,
	idle
}

friendlyUnits = [oVillager, oVillage, oLumberMill, oQuarry];

// A map that we can use to lookup where each resource can be dropped off
// key:   Resource
// value: array of buildings
resourceDropOffMap = ds_map_create();
ds_map_add(resourceDropOffMap, oWood, [oVillage, oLumberMill]);
ds_map_add(resourceDropOffMap, oStone, [oVillage, oQuarry]);
ds_map_add(resourceDropOffMap, oBerry, [oVillage]);

// Layers
layers = ds_map_create();
ds_map_add(layers, oWood, "Globals");
ds_map_add(layers, oStone, "Globals");
ds_map_add(layers, oBerry, "Globals");
ds_map_add(layers, oUI, "Globals");
ds_map_add(layers, oSelect, "Globals");
ds_map_add(layers, oBuilder, "Globals");
ds_map_add(layers, oCamera, "Globals");
ds_map_add(layers, oTree, "Resources");
ds_map_add(layers, oRock, "Resources");
ds_map_add(layers, oBush, "Resources");
ds_map_add(layers, oVillage, "Buildings");
ds_map_add(layers, oLumberMill, "Buildings");
ds_map_add(layers, oQuarry, "Buildings");
ds_map_add(layers, oVillager, "Villagers");
ds_map_add(layers, oEnemy, "Enemies");

// Sprites
sprites = ds_map_create();
ds_map_add(sprites, oWood, "");
ds_map_add(sprites, oStone, "");
ds_map_add(sprites, oBerry, "");
ds_map_add(sprites, oUI, "");
ds_map_add(sprites, oBuilder, "");
ds_map_add(sprites, oCamera, "");
ds_map_add(sprites, oTree, sTree);
ds_map_add(sprites, oRock, sRock);
ds_map_add(sprites, oBush, sBush);
ds_map_add(sprites, oVillage, sVillage);
ds_map_add(sprites, oLumberMill, sLumberMill);
ds_map_add(sprites, oQuarry, sQuarry);
ds_map_add(sprites, oVillager, sVillager);
ds_map_add(sprites, oEnemy, sEnemy);

// Initialise global objects
globalObjects = ds_map_create();
ds_map_add(globalObjects, oWood, [[0, 0]]);
ds_map_add(globalObjects, oStone, [[0, 0]]);
ds_map_add(globalObjects, oBerry, [[0, 0]]);
ds_map_add(globalObjects, oUI, [[0, 0]]);
ds_map_add(globalObjects, oSelect, [[0, 0]]);
ds_map_add(globalObjects, oBuilder, [[0, 0]]);
ds_map_add(globalObjects, oCamera, [[0, 0]]);
CreateInstances(globalObjects);

// Initialise game objects
gameObjects = ds_map_create();
ds_map_add(gameObjects, oVillage, [[7, 4]]);
ds_map_add(gameObjects, oVillager, [[7, 4], [1, 2]]);
ds_map_add(gameObjects, oEnemy, [[1, 9]]);
ds_map_add(gameObjects, oRock, [[3, 2], [3, 3], [4, 2]]);
ds_map_add(gameObjects, oTree, [[11, 6], [12, 6], [13, 6], [12, 7], [13, 7]]);
ds_map_add(gameObjects, oBush, [[11, 1], [12, 2], [13, 3], [12, 1], [13, 2]]);
CreateInstances(gameObjects);