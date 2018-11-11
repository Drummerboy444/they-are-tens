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
