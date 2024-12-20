/// @description Insert description here
// You can write your code in this editor
globalvar dead;
dead = false;

walk_mspd = 3;
run_mspd = 6;
mspd = 0;

start_accel = .2;
accel = start_accel;
decel = .5;

xspd = 0;
yspd = 0;


globalvar detected;
detected = false;

globalvar detecting_sound;
detecting_sound = 800;

detecting_distance = 200;
escape_distance = detecting_distance+200;

globalvar holding_breath;
holding_breath = false;

globalvar breathe_in;
breathe_in = false;

globalvar aimed;
aimed = false;

globalvar freezed;
freezed = false;

escaping_time = 10*room_speed;
escaping_timer = 0;

max_detected_timer = room_speed*3;
detected_timer = max_detected_timer;


hold_time = 0;
max_hold_time =2*room_speed;



freeze_timer = 0;
freeze_time = room_speed*1.5

running = false
