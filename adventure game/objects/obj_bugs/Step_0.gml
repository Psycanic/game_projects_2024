/// @description Insert description here
// You can write your code in this editor

switch (my_state){
	case npc_state.npc_idle:
		wait();  //this function waits for a while, then wanders.
	break;
	case npc_state.npc_wander:
		mspd = 4;
		wander(); //this function picks a point and moves to it, then waits or picks a new one.
	break;
	case npc_state.npc_flee:
		mspd = 8;
		flee();  //this function tells the npc to run.
	break;
}

//  if the player gets to close, no matter what state we are in,
//    switch to the "fleeing" state.
if (distance_to_object(obj_player) < 100){
	my_state = npc_state.npc_flee;
	sound_level+=100;
	audio_play_sound(sfx_player_gasp,1,false);
	audio_play_sound(sfx_bug_steps,1,false);
}



//collision
//wall_collision();