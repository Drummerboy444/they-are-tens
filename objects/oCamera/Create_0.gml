camSpeed = 6;

x = floor(room_width/2);
y = floor(room_height/2);

// CAMERA MOVEMENT LIMITATIONS
minX = camera_get_view_width(view_camera[0])/2;
maxX = room_width - minX;
minY = camera_get_view_height(view_camera[0])/2;
maxY = room_height - minY;