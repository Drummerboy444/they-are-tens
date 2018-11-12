/// @description SelectVillagers(x1, y1, x2, y2) Changes the selected variable of any villagers within a
///                                              bounding box to true and returns a list of all such villagers
/// @arg x1 start x position
/// @arg y1 start y position
/// @arg x2 end x position
/// @arg y2 end y position
var x1 = argument[0];
var y1 = argument[1];
var x2 = argument[2];
var y2 = argument[3];

var startX = min(x1, x2);
var startY = min(y1, y2);
var endX = max(x1, x2);
var endY = max(y1, y2);
var villagersWithin = ds_list_create();
with (oVillager) {
	selected = collision_rectangle(startX, startY, endX, endY, id, false, false);
	if (selected) {
		ds_list_add(villagersWithin, id);
	}
}
return villagersWithin;