// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function wander(){
	//if we have arrived at our destination
	if (point_distance(x, y, dest_x, dest_y) < mspd){
		//put us exactly there.
		x = dest_x;
		y = dest_y;
		
		//25% to start waiting, otherwise pick a new wander target.
		r = random(1);
		if (r < .25){
			my_state = npc_state.npc_idle;
		} else {
			var dist = random_range(50, 200); //random distance to move
			var dir = random(360); //random direction to move
			
			//pick a point, dist pixels away in direction dir.
			dest_x = x + lengthdir_x(dist, dir);  
			dest_y = y + lengthdir_y(dist, dir);
			
			if(place_meeting(dest_x,dest_y,obj_wall)){
				dist = random_range(50, 200); 
				dir = random(360);
				dest_x = x + lengthdir_x(dist, dir);  
				dest_y = y + lengthdir_y(dist, dir);
			}
		}
	} else {
		//if we haven't yet arrived, move to the destination.
		var move_dir = point_direction(x, y, dest_x, dest_y);
		x += lengthdir_x(mspd, move_dir);
		y += lengthdir_y(mspd, move_dir);
		wall_collision(obj_wall)
	}
}

function start_wandering(){	
	my_state = npc_state.npc_wander;
	
	//same code for picking a destination above,
	//with no chance to go into idle state.
	var dist = random_range(50, 200);
	var dir = random(360);
			
	dest_x = x + lengthdir_x(dist, dir);
	dest_y = y + lengthdir_y(dist, dir);
	
	if(place_meeting(dest_x,dest_y,obj_wall)){
				dist = random_range(50, 200); 
				dir = random(360);
				dest_x = x + lengthdir_x(dist, dir);  
				dest_y = y + lengthdir_y(dist, dir);
			}
}

function wait(){  //wait for a certain time, then start wandering again.
	wait_timer ++;
	
	if (wait_timer > wait_time){
		start_wandering();
		wait_timer = 0;
	}
}

function flee(){ //this function is how we run from the player.
	my_state = npc_state.npc_flee;
	
	//first, get the direction away from the player (from player, toward us)
	var flee_dir = point_direction(obj_player.x, obj_player.y, x, y);
	//then move in that direction according to current mspd.
	x += lengthdir_x (mspd, flee_dir);
	y += lengthdir_y (mspd, flee_dir);
	
	
	if (place_meeting(x,y,obj_wall) or x<0 or x>room_width or y<0 or y>room_height){
		instance_destroy();
	}
}

