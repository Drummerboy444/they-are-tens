if (selected) {
	var location = [x, y];
	var target = GetNearestGridCenter([mouse_x, mouse_y]);
	FindAndStartPath(location, target, path)
}