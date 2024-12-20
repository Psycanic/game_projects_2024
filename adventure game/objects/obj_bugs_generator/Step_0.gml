/// @description Insert description here
// You can write your code in this editor

if(not instance_exists(obj_bugs)){
	create_timer--;
}
if(create_timer<=0){
	instance_create_depth(random_range(room_width/2,room_width), random_range(room_width/2,room_width), 1,obj_bugs);
	create_timer =random_range( 10*room_speed, 6*room_speed);
}