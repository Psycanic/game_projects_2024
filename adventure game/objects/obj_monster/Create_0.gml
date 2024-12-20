/// @description Insert description here
// You can write your code in this editor



enum monst_state {
	monst_idle = 0,
	monst_wander = 1,
	monst_approaching = 2,
	monst_search = 3
}

my_state = monst_state.monst_idle;  //variable to store *current* state out of possible states.

dest_x = x;
dest_y = y;

mspd = 8;

wait_time = random_range(0.5 * room_speed, 1.5 * room_speed);
wait_timer = 0;

xspd = 0;
yspd = 0;