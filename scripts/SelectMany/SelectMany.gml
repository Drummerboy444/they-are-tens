/// @description SelectVillagers(x1, y1, x2, y2, selectPriority) Changes to true the selected variable of all instances
///												of the highest priority object present in a box
/// @arg x1 start x position
/// @arg y1 start y position
/// @arg x2 end x position
/// @arg y2 end y position
/// @arg selectPriority descending selection priority
var x1 = argument[0];
var y1 = argument[1];
var x2 = argument[2];
var y2 = argument[3];

var startX = min(x1, x2);
var startY = min(y1, y2);
var endX = max(x1, x2);
var endY = max(y1, y2);
for(i=0; i<array_length_1d(selectPriority); i++){
	var object = selectPriority[i];
	var inRect = collision_rectangle(startX, startY, endX, endY, object, false, false);
	if(inRect != noone){
		with (object) {
			selected = collision_rectangle(startX, startY, endX, endY, id, false, false);
		}
		break;
	}
}