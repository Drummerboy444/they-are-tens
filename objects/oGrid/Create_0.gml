var cell_width = 16;
var cell_height = 16;

var horizontal_cells = room_width div cell_width;
var vertical_cells = room_height div cell_height;

grid = mp_grid_create(0, 0, horizontal_cells, vertical_cells, cell_width, cell_height);