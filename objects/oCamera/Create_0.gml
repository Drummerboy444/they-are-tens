camSpeed = 6;

// CAMERA MOVEMENT LIMITATIONS
minX = camera_get_view_width(view_camera[0])/2;
maxX = room_width - minX;
minY = camera_get_view_height(view_camera[0])/2;
maxY = room_height - minY;