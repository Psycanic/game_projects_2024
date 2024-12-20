/// @description Insert description here
// You can write your code in this editor

switch (my_state){
	case monst_state.monst_idle:
		wait();  //this function waits for a while, then wanders.
	break;
	case monst_state.monst_wander:
		mspd = 3;
		wander(); //this function picks a point and moves to it, then waits or picks a new one.
	break;
	case monst_state.monst_approaching:
		mspd = 6;
		approach();  //this function tells the npc to run.
	break;
	case monst_state.monst_search:
		mspd = 0.5;
		search();
			
	
}

//  if the player gets to close, no matter what state we are in,
//    switch to the "fleeing" state.
if (detected == true){
	
	my_state = monst_state.monst_search;
	if(aimed = true) {
		my_state = monst_state.monst_approaching;

	}
}else if(aimed = true) {
	my_state = monst_state.monst_approaching;

}



//collision
//wall_collision();