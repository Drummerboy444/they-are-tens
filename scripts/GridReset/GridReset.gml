/// @description GridReset()	Clears current grid and re-creates using oCircumnavigable children

mp_grid_clear_all(oGrid.grid);

mp_grid_add_instances(oGrid.grid, oCircumnavigable, false);