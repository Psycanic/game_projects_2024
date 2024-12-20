/// @description Insert description here
// You can write your code in this editor


if(keyboard_check_pressed(ord("E"))){
	instance_destroy(other);
	num_keys+=1;
	audio_play_sound(sfx_pick_keys,1,false);
}