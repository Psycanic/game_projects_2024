/// @description Insert description here
// You can write your code in this editor

if(room ==rm_title or room == rm_instructions){
audio_resume_all();
audio_stop_sound(sfx_monst_approaching);
audio_stop_sound(sfx_player_panting);
audio_stop_sound(sfx_lose);
audio_stop_sound(sfx_win);
audio_stop_sound(sfx_monst_groan);

sound_level = 0;
num_keys = 0;
	if(keyboard_check_pressed(vk_space)) {
		room_goto_next();
		alarm[0] = 60*room_speed;

	}
}


if(room =rm_game  and dead =true){
if(keyboard_check_pressed(vk_space))
{
	room_goto_next();
}
}
if(room ==rm_game  and dead =false){

if(!audio_is_playing(sfx_monst_groan))audio_play_sound(sfx_monst_groan,1,true);
}



if(room == rm_jumpscare){
	audio_pause_all();
	audio_play_sound(sfx_end_screaming,1,false);
	screenshake(start_jumpscare_timer,10,1);
	jumpscare_timer--;
	if(jumpscare_timer <=0){
	room_goto_next();
	jumpscare_timer = start_jumpscare_timer;
	}
}
if(room ==rm_end){
audio_stop_sound(sfx_end_screaming);
if(!audio_is_playing(sfx_lose)){audio_play_sound(sfx_lose,1,false);}
else{audio_resume_sound(sfx_lose)}

if(keyboard_check_pressed(vk_space))
{
	room_goto(rm_title);
}
}

if(room ==rm_success){
audio_pause_all();
if(!audio_is_playing(sfx_win)){audio_play_sound(sfx_win,1,false);}
else{audio_resume_sound(sfx_win)}

if(keyboard_check_pressed(vk_space))
{
	room_goto(rm_title);
}
}