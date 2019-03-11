if(jumping || falling) {
	sprite_index = GooseJump;
	image_speed = 1;
}
if(!jumping && ! falling) {
	sprite_index = GooseRun;
	image_speed = 1;
}