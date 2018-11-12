/// @description SelectVillager(villager) Sets this villagers selected variable to true, and all other
///                                       villagers selected variables to false
/// @arg villager villager to select
var villager = argument[0];

with (oVillager) {
	selected = false;
}
if (villager != noone) {
	villager.selected = true;
}