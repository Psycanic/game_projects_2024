/// @description Insert description here
// You can write your code in this editor


audio_play_sound(bgm_horror_vibe,1,true);
start_jumpscare_timer = 1.5*room_speed;
jumpscare_timer = start_jumpscare_timer;


globalvar num_keys;
num_keys = 0;

globalvar sound_level;
sound_level = 0;

alarm[0]=-1;