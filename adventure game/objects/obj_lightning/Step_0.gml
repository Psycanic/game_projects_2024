/// @description Insert description here
// You can write your code in this editor


if (flash == false){
	dark_time ++;
	
	if (dark_time > dark_timer){
		flash = true;
		dark_time = 0;
	}
} else {
	flash_time ++;
	
	if (flash_time > flash_timer){
		flash = false;
		flash_time = 0;
	}
}
