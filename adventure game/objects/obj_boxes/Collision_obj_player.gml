/// @description Insert description here
// You can write your code in this editor

if(other.xspd>0 and other.x<x){
	if(not place_meeting(other.x + other.sprite_width/2 + sprite_width/2,y,obj_boxes)){
			pushing = true;
			x = other.x + other.sprite_width/2 + sprite_width/2;
	}
}else if(other.xspd<0 and other.x>x){
	if(not place_meeting(other.x - other.sprite_width/2 - sprite_width/2,y,obj_boxes)){
	pushing = true;
	x = other.x - other.sprite_width/2 - sprite_width/2;
	}
}else if(other.yspd>0 and other.y<y){
		if(not place_meeting(x,other.y + other.sprite_height/2 + sprite_height/2,obj_boxes)){
			pushing = true;
			y = other.y + other.sprite_height/2 + sprite_height/2;
		}
		
}else if(other.yspd<0 and other.y>y){
		if(not place_meeting(x,other.y - other.sprite_height/2 - sprite_height/2,obj_boxes)){
		pushing = true;
		y = other.y - other.sprite_height/2 - sprite_height/2;
		}

}
/*
if(pushing = true){
	other.xspd = 2;
	other.yspd =2;

}