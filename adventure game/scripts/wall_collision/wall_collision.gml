// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function wall_collision(obj){
for(var _x = 0;_x < abs(xspd);_x++){
		
		if(not place_meeting(x+sign(xspd), y, obj)){
		
			x += sign(xspd);
	
		}else{
		
			xspd = 0;
			break;
		}
	}

	for(var _y = 0;_y < abs(yspd); _y++){
	
		if(not place_meeting(x, y+sign(yspd), obj)){
		
			y += sign(yspd);
			
		}else{
		
			yspd = 0;
			break;
	
		}
	}

}