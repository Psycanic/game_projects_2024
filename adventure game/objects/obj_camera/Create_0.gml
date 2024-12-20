/// @description Insert description here
// You can write your code in this editor

player_cam = camera_create();

vm = matrix_build_lookat(0,0,-10,0,0,0,0,1,0);
pm = matrix_build_projection_ortho(room_width,room_height,1,3200);

camera_set_view_mat(player_cam,vm);
camera_set_proj_mat(player_cam,pm);

view_camera[0] = player_cam;


follow = obj_player;
xTo =x;
yTo =y;