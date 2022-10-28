/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


moveRight = keyboard_check(vk_right)
moveLeft = keyboard_check(vk_left)
moveUp = keyboard_check(vk_up)
moveDown = keyboard_check(vk_down)


vx = ((moveRight - moveLeft) * walkSpeed)
vy = ((moveDown - moveUp) * walkSpeed)


// Movimientos
if (vx == 0 && vy == 0) {
		
	switch(dir){
		case 0: sprite_index = spr_player_idle_right_strip02; break;
		case 2: sprite_index = spr_player_idle_left_strip02; break;
		case 3: sprite_index = spr_player_idle_down_strip02; break;
		case 1: sprite_index = spr_player_idle_up_strip02; break;

	}
	
} else {
	
	if !collision_point(x+vx,y,obj_par_enviroment,true,true){
		x += vx;
	}
	if !collision_point(x,y+vy,obj_par_enviroment,true,true){
		y += vy;
	}

	if(vx > 0){
		sprite_index = spr_player_walk_right_strip03;
		dir = 0;
	}
	if(vx < 0){
		sprite_index = spr_player_walk_left_strip03;
		dir = 2;
	}
	if(vy > 0){
		sprite_index = spr_player_walk_down_strip03;
		dir = 3;
	}
	if(vy < 0){
		sprite_index = spr_player_walk_up_strip03;
		dir = 1;
	}


}

// Ordenamiento de profundidad
depth=-y
