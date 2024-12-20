/// @description Insert description here
// You can write your code in this editor

if(sprite_index = spr_bag){
if (keyboard_check_pressed(ord("E"))){
	audio_play_sound(sfx_open_bags,1,false);
	sprite_index = spr_bag_open;
	r = random(1);
		if (r < .25){
			num_keys+=1;
			audio_play_sound(sfx_pick_keys,1,false);
			sound_level+=50
		}

}
}
