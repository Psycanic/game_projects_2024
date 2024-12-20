/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if(sound_level>(detecting_sound*3/4)){
	is_warring=true
}
if(sound_level<=(detecting_sound*3/4)){
	is_warring=false
}
if(instance_exists(obj_warring)){
obj_warring.x = obj_player.x;
obj_warring.y = obj_player.y;
}