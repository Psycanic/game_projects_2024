// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

	
function approach(){
	
	if(not audio_is_playing(sfx_monst_approaching))audio_play_sound(sfx_monst_approaching,1,true);
	if(not audio_is_playing(sfx_monst_groan))audio_play_sound(sfx_monst_groan,1,true);
	var srch_dir = point_direction(x,y,obj_player.x, obj_player.y);
	//then move in that direction according to current mspd.
	x += lengthdir_x (mspd, srch_dir);
	y += lengthdir_y (mspd, srch_dir);
	
}

function search(){
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
			var dist = random_range(20, 70); //random distance to move
			var dir = random(360); //random direction to move
			
			//pick a point, dist pixels away in direction dir.
			dest_x = x + lengthdir_x(dist, dir);  
			dest_y = y + lengthdir_y(dist, dir);
			
			if(place_meeting(dest_x,dest_y,obj_wall)){
				dist = random_range(20, 70); 
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
		wall_collision(obj_wall);
	}

}
	

