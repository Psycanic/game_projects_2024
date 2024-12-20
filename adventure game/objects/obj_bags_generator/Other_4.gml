/// @description Insert description here
// You can write your code in this editor



num_bags = 0;
max_num_bags = random_range(3,7)
while(num_bags<max_num_bags){
	var gen_x = random_range(0,room_width);
	var gen_y = random_range(0,room_height);
	if(!place_meeting(gen_x,gen_y,obj_boxes) & !place_meeting(gen_x,gen_y,obj_wall)){
	instance_create_depth(gen_x, gen_y,1,obj_bags);
	num_bags+=1;
	}
	
}