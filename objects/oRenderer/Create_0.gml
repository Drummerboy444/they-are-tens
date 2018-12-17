depthGrid = ds_grid_create(2, 0);

// The order that objects should be drawn in if they have the same y coordinate
drawPriority = ds_list_create();
ds_list_add(drawPriority, "oVillage");
ds_list_add(drawPriority, "oStoneWall");
ds_list_add(drawPriority, "oStoneWallVertical");
ds_list_add(drawPriority, "oLumberMill");
ds_list_add(drawPriority, "oQuarry");
ds_list_add(drawPriority, "oTree");
ds_list_add(drawPriority, "oRock");
ds_list_add(drawPriority, "oBush");
ds_list_add(drawPriority, "oEnemy");
ds_list_add(drawPriority, "oVillager");