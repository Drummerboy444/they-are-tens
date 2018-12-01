/// @description SelectVillager(unit) Sets this unit's selected to true
/// @arg unit unit to select
var unit = argument[0];

if (unit != noone) {
	unit.selected = true;
}

oSelect.selectedObj = oSelect.clickedObj;