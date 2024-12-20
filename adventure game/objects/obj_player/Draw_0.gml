/// @description Insert description here
// You can write your code in this editor



if(detected == true){
	draw_set_halign(fa_center);
	draw_text(x,y-2*sprite_height,"Press space to hold ur breath!!");
	if (holding_breath = true){
		var perc_hold;
		perc_hold = hold_time/max_hold_time*100
		draw_healthbar(x-sprite_width,y-sprite_height,x+sprite_width,y-sprite_height+30,perc_hold,c_black,c_blue,c_red,0,true,true)
	}
	
	
}
if(room ==rm_game){
draw_self();
}

if(num_keys<3 and place_meeting(x,y,obj_gate)){
draw_text_color(x,y-sprite_height/2,"You need 3 keys to access the gate!",c_white,c_white,c_white,c_white,100)

}