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
defaultLayer = "DefaultLayer";

// Costs in [wood,stone,food]
costs = ds_map_create();
ds_map_add(costs, oVillager, [0,0,2]);
ds_map_add(costs, oVillage, [5,5,5]);
ds_map_add(costs, oLumberMill, [2,3,0]);
ds_map_add(costs, oQuarry, [3,2,0]);

// Sprites
sprites = ds_map_create();
ds_map_add(sprites, oWood, "");
ds_map_add(sprites, oStone, "");
ds_map_add(sprites, oBerry, "");
ds_map_add(sprites, oUI, "");
ds_map_add(sprites, oBuilder, "");
ds_map_add(sprites, oCamera, "");
ds_map_add(sprites, oRenderer, "");
ds_map_add(sprites, oTree, sTree);
ds_map_add(sprites, oRock, sRock);
ds_map_add(sprites, oBush, sBush);
ds_map_add(sprites, oVillage, sVillage);
ds_map_add(sprites, oLumberMill, sLumberMill);
ds_map_add(sprites, oQuarry, sQuarry);
ds_map_add(sprites, oVillager, sVillager);
ds_map_add(sprites, oEnemy, sEnemy);

// Button commands for each selection in map value references the buttons map below
buttonLists = ds_map_create();
ds_map_add(buttonLists, "default", ["buildVillage","buildQuarry","buildLumberMill"]);
ds_map_add(buttonLists, oVillager, ["collectWood","collectFood","collectStone"]);
ds_map_add(buttonLists, oVillage, ["createVillager"]);
ds_map_add(buttonLists, oQuarry, []);
ds_map_add(buttonLists, oLumberMill, []);

// Individual buttons in [sprite, relevant script]
buttons = ds_map_create();
ds_map_add(buttons, "buildVillage", [sVillage, BuildVillage]);
ds_map_add(buttons, "buildQuarry", [sQuarry, BuildQuarry]);
ds_map_add(buttons, "buildLumberMill", [sLumberMill, BuildLumberMill]);
ds_map_add(buttons, "collectWood", [sTree, CollectWood]);
ds_map_add(buttons, "collectFood", [sBush, CollectFood]);
ds_map_add(buttons, "collectStone", [sRock, CollectStone]);
ds_map_add(buttons, "createVillager", [sVillager, CreateVillager]);

// Initialise global objects
globalObjects = ds_map_create();
ds_map_add(globalObjects, oWood, [[0, 0]]);
ds_map_add(globalObjects, oStone, [[0, 0]]);
ds_map_add(globalObjects, oBerry, [[0, 0]]);
ds_map_add(globalObjects, oUI, [[0, 0]]);
ds_map_add(globalObjects, oSelect, [[0, 0]]);
ds_map_add(globalObjects, oBuilder, [[0, 0]]);
ds_map_add(globalObjects, oCamera, [[0, 0]]);
ds_map_add(globalObjects, oRenderer, [[0, 0]]);
ds_map_add(globalObjects, oGrid, [[0,0]]);
CreateInstances(globalObjects);

// Initialise game objects
gameObjects = ds_map_create();
ds_map_add(gameObjects, oVillage, [[7, 4]]);
ds_map_add(gameObjects, oVillager, [[7, 6]]);
ds_map_add(gameObjects, oSpearman, [[8, 5]]);
ds_map_add(gameObjects, oEnemy, [[1, 9]]);
ds_map_add(gameObjects, oRock, [[3, 2], [3, 3], [4, 2]]);
ds_map_add(gameObjects, oTree, [[11, 6], [12, 6], [13, 6], [12, 7], [13, 7]]);
ds_map_add(gameObjects, oBush, [[11, 1], [12, 2], [13, 3], [12, 1], [13, 2]]);
CreateInstances(gameObjects);