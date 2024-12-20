/// @description Insert description here
// You can write your code in this editor
if(room == rm_title){


draw_set_halign(fa_left);
draw_set_font(fnt_title);
draw_set_color(c_red);
draw_text(room_width/3,room_height/2-20,"Hold Your Breath");
draw_set_color(c_white);
draw_set_font(fnt_default);
draw_text(1000,room_height/2,"Press space to start")



}
if(room == rm_instructions){
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_set_font(fnt_default);

draw_text(room_width/2,room_height/4,"Pay attention to the level of sounds you emitted at all times! \n\n Arrow keys to walk, hold shift to run \n Press E to search bags or pick up keys. \n\n If you get near the monster, you have to keep pressing down SPACE to hold your breath.\n Get far way from the monster and it will lose track of yours! \n Beware, if you hold your breath for too long, you will pant heavily with a large noise! \n\n THE MOSTER WILL COME IF YOU ARE TOO LOUD! \n\nYou must find 3 keys in 60 seconds to escape from the gate.\n\n PRESS SPACE TO START\n GOOD LUCK!")

}

if(room == rm_game){
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	draw_set_font(fnt_default);

	draw_text(120,20,"SOUNDLEVEL");
	draw_healthbar(20,20,100,60,sound_level/detecting_sound*100,c_grey,c_blue,c_red,0,true,true);
	draw_text(20,80,"keys = " + string(num_keys));
	draw_text(room_width/4,35,"time left");
	perc_time = alarm[0]/(60*room_speed)*100;
	draw_healthbar(room_width/4,20,room_width/4*3,30,perc_time,c_black,c_red,c_green,0,true,true);


}



if(room == rm_end){
draw_set_halign(fa_center);
draw_set_color(c_white);

draw_text(680,384,"Press space to restart")

}


if(room == rm_success){
draw_set_halign(fa_center);
draw_set_color(c_white);

draw_text(680,384,"You successfully escaped!\n Press space to restart")

}