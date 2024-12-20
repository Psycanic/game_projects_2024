/// @description Insert description here
// You can write your code in this editor


enum npc_state {
	npc_idle = 0,
	npc_wander = 1,
	npc_flee = 2
}

my_state = npc_state.npc_idle;  //variable to store *current* state out of possible states.

dest_x = x;
dest_y = y;

mspd = 8;

wait_time = random_range(1 * room_speed, 3 * room_speed);
wait_timer = 0;

xspd = 0;
yspd = 0;