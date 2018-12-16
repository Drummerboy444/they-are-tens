randomize();


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

global.GRID_SIZE = 16;

friendlyUnits = [oVillager, oVillage, oLumberMill, oQuarry, oStoneWall];

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
ds_map_add(costs, oVillager, [0,0,10]);
ds_map_add(costs, oVillage, [20,20,20]);
ds_map_add(costs, oLumberMill, [10,10,0]);
ds_map_add(costs, oQuarry, [10,10,0]);
ds_map_add(costs, oStoneWall, [0,5,0]);

// Sprites
sprites = ds_map_create();
ds_map_add(sprites, oWood, "");
ds_map_add(sprites, oStone, "");
ds_map_add(sprites, oBerry, "");
ds_map_add(sprites, oUI, "");
ds_map_add(sprites, oBuilder, "");
ds_map_add(sprites, oCamera, "");
ds_map_add(sprites, oRenderer, "");
ds_map_add(sprites, oTree, [sTree1,sTree2,sTree3]);
ds_map_add(sprites, oRock, [sRock1,sRock2,sRock3]);
ds_map_add(sprites, oBush, [sBush1,sBush2,sBush3]);
ds_map_add(sprites, oVillage, sVillage);
ds_map_add(sprites, oLumberMill, sLumberMill);
ds_map_add(sprites, oQuarry, sQuarry);
ds_map_add(sprites, oStoneWall, sStoneWall);
ds_map_add(sprites, oVillager, sVillager);
ds_map_add(sprites, oEnemy, sEnemy);

// Button commands for each selection in map value references the buttons map below
buttonLists = ds_map_create();
ds_map_add(buttonLists, "default", ["buildVillage","buildQuarry","buildLumberMill","buildStoneWall"]);
ds_map_add(buttonLists, oVillager, ["collectWood","collectFood","collectStone"]);
ds_map_add(buttonLists, oVillage, ["createVillager"]);
ds_map_add(buttonLists, oQuarry, []);
ds_map_add(buttonLists, oLumberMill, []);
ds_map_add(buttonLists, oStoneWall, []);

// Individual buttons in [sprite, relevant script]
buttons = ds_map_create();
ds_map_add(buttons, "buildVillage", [sVillage, BuildVillage]);
ds_map_add(buttons, "buildQuarry", [sQuarry, BuildQuarry]);
ds_map_add(buttons, "buildLumberMill", [sLumberMill, BuildLumberMill]);
ds_map_add(buttons, "buildStoneWall", [sStoneWall, BuildStoneWall]);
ds_map_add(buttons, "collectWood", [sTree1, CollectWood]);
ds_map_add(buttons, "collectFood", [sBush1, CollectFood]);
ds_map_add(buttons, "collectStone", [sRock1, CollectStone]);
ds_map_add(buttons, "createVillager", [sVillager, CreateVillager]);

// Initialise global objects
globalObjects = [
	oWood,
	oStone,
	oBerry,
	oUI,
	oSelect,
	oBuilder,
	oCamera,
	oRenderer,
	oGrid,
	oTrackingGrid
]
CreateGlobals(globalObjects);

gameObjects = GenerateMap();
CreateInstances(gameObjects);
