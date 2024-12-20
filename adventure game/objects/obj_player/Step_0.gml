 /// @description Insert description here
// You can write your code in this editor


//movement
if(keyboard_check(vk_shift)){
	running = true;
	mspd = run_mspd;
	
}else{
	running = false;
	mspd = walk_mspd;
	
}



if (keyboard_check(vk_left)){
	xspd -= accel;
}


if (keyboard_check(vk_right)){
	xspd += accel;	
}


if (keyboard_check(vk_up)){
	yspd -= accel;	
}

if (keyboard_check(vk_down)){
	yspd += accel;	
}


xspd = clamp(xspd, -mspd, mspd);
yspd = clamp(yspd, -mspd, mspd);


//slowing
if (not keyboard_check(vk_right) and not keyboard_check(vk_left)){
	if (xspd < 0){
		xspd += decel;
	
		if (xspd > 0) xspd = 0;
	} else if (xspd > 0){
		xspd -= decel;
	
		if (xspd < 0) xspd = 0;
	}
}

if (not keyboard_check(vk_up) and not keyboard_check(vk_down)){
	if (yspd < 0){
		yspd += decel;
	
		if (yspd > 0) xspd = 0;
	} else if (yspd > 0){
		yspd -= decel;
	
		if (yspd < 0) yspd = 0;
	}
}

//soundlevel calculation
if (not keyboard_check(vk_right) and not keyboard_check(vk_left) and not keyboard_check(vk_up) and not keyboard_check(vk_down)){
	if(sound_level>=2) sound_level-=2;

}else if(running == true){
	sound_level +=2;
}else{
	sound_level+=1;
}




//collision
wall_collision(obj_wall)

//meeting monsters
if(distance_to_object(obj_monster)<=detecting_distance){
	detected = true;
	
}

if(detected = true){
	detected_timer--;
	if(detected_timer>= 0 & keyboard_check_pressed(vk_space)) {
		holding_breath =true;
		escaping_timer++;

			
	}else{
		detected_timer = max_detected_timer;
		detected_timer++;
		freezed = true;
	}
	
}

if escaping_timer<=escaping_time {
	if(distance_to_object(obj_monster)>=escape_distance){
		detected = false;
		holding_breath = false; 
		escaping_timer = 0;
		hold_time =0;

	}
}else{
	aimed = true;
	detected = false;
		holding_breath = false; 
		escaping_timer = 0;
		hold_time =0;
}
	
if(holding_breath){
	if(keyboard_check(vk_space)){
		breathe_in = true;
		
		mspd = 2;
		if(hold_time<max_hold_time){
			hold_time++;
		}else{
			hold_time =0;
		}
		/*if(!audio_is_playing(sfx_player_panting))
			{audio_play_sound(sfx_player_panting,1,true);}
		else if(audio_is_paused(sfx_player_panting)){
			audio_resume_sound(sfx_player_panting);
		}*/
		
		
	}else{
		breathe_in = false;
		
		sound_level+=2;
		if(hold_time>0)hold_time -= 0.5;
		
			
	}
			
	if(hold_time>max_hold_time){
		holding_breath = false;
		sound_level+=500;	
		freezed = true;
		
		hold_time =0;
		
	}	
	
	/*if(sound_level<800 or distance_to_object(obj_monster)>detecting_distance){
		detected = false;
		holding_breath = false;
	
	}*/
		if freezed == true{
			draw_text(100,200,"freezed");
			mspd = 0;
			freeze_timer++;
			if(freeze_timer<=freeze_time){
				xspd =0;
				yspd =0;
			}else{
				freeze_timer =0;
				freezed = false;
			}
		}
				
		
}
	
if(sound_level>= detecting_sound){
	aimed = true;
	detected = false;
	holding_breath = false;

}
		
	
if(place_meeting(x,y,obj_monster)){
	room_goto(rm_jumpscare);
}

//sound effects
/*if(!mspd=0){
		if(!audio_is_playing(sfx_player_footsteps)){
			audio_play_sound(sfx_player_footsteps,1,true);
		}else{audio_resume_sound(sfx_player_footsteps)}
		p=random_range(.9,1.1);
		audio_sound_pitch(sfx_player_footsteps, p);
		}else{(audio_pause_sound(sfx_player_footsteps))}
		*/
if(holding_breath){
	if(breathe_in = false){
		if(!audio_is_playing(sfx_player_panting))
			{audio_play_sound(sfx_player_panting,1,true);}
		else if(audio_is_paused(sfx_player_panting)){
			audio_resume_sound(sfx_player_panting);
		}
	}else{
		audio_pause_sound(sfx_player_panting);
	}
}
if(aimed){
	if(!audio_is_playing(sfx_monst_approaching)){audio_play_sound(sfx_monst_approaching,1,false);}
}
if(!detected & !aimed){
		if(audio_is_playing(sfx_monst_approaching))audio_stop_sound(sfx_monst_approaching);
		if(audio_is_playing(sfx_player_panting))audio_stop_sound(sfx_player_panting);


}

//animation
if(xspd!=0){
		if(xspd<0){
	
		image_xscale =-1;
		}else if(xspd>0){
		
		image_xscale =1;
		}

	

		if(abs(xspd)>=0.5 or abs(yspd)>=0.5){
			sprite_index = spr_player_walk;
			image_speed = abs(xspd)/mspd*2;
			
		}else{
			sprite_index = spr_player_idle;
			image_speed = 1;
		}

}