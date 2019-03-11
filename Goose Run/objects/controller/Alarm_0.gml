randomize();
var count = irandom_range(1, 2);

var i = instance_create_layer(room_width + 100, room_height - 120, "Instances", oObstacles);
i.sprite_index = choose(boba, pinkTie);

switch(i.sprite_index) {
	case boba:
	case pinkTie:
	i.image_speed = 0;
	
	if(global.speedModifier > 1.5) {
		if(count == 2) {
			var j = instance_create_layer(room_width + 100, room_height - 120, "Instances", oObstacles);
			j.sprite_index = choose(boba, pinkTie);
			j.image_speed = 0;
		}
	}
	break;
	
	default: 
	i.image_speed = 1;
	i.y = room_height - 150;
}

if(global.gameOver) exit;

alarm[0] = room_speed * random_range(1/global.speedModifier, 3/global.speedModifier);
