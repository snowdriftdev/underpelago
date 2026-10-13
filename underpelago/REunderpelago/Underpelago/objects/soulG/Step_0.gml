		if (room == Room1) {
	//Controls
	var rightKey = keyboard_check(vk_right);
	var leftKey = keyboard_check(vk_left);
	var downKey = keyboard_check(vk_down);
	var upKey = keyboard_check(vk_up);

	var wall = box;
		
		//make soul not be able to fly
	xSpeed = (rightKey - leftKey) * playerSpeed;
	ySpeed = (downKey - upKey) * playerSpeed;
	
	fWidth = soulG.sprite_width
			gravity = -0.08
			
		//Hurtbox
	if (instance_exists(my_hurtbox)) {   
		var target_width = .25 * fWidth;   // Current width including its scale
		var target_height = fWidth - 8; // Current height including its scale

		// Divide target size by the hurtbox's original, unscaled sprite dimensions
		my_hurtbox.image_xscale = target_width / sprite_get_width(my_hurtbox.sprite_index);
		my_hurtbox.image_yscale = target_height / sprite_get_height(my_hurtbox.sprite_index);
	
		my_hurtbox.x = soulG.x + ((.5 * fWidth) - (.5 * my_hurtbox.sprite_width));
	    my_hurtbox.y = soulG.y + 8;
	}
	//Hitbox passing through hurtbox
	if(instance_exists(my_hurtbox)){
		if(place_meeting(x + xSpeed, y, Hitbox)){
			hp -= 16;
			hp = clamp(hp, 0, hp_max);
		}
		if(place_meeting(x, y + ySpeed, Hitbox)){
			hp -= 16;
			hp = clamp(hp, 0, hp_max);
		}
	}
	//Hp gain / lose
	if (hp <= 0) {
    instance_destroy();
}
	//Collision
	if (instance_exists(soulG)) {
		if(place_meeting(x + xSpeed, y, CollisionG)){
            vspeed = -0.1;
			gravity = 0;
			xSpeed = 0;

		}
		if(place_meeting(x, y + ySpeed, CollisionG)){
            vspeed = -0.1;
			gravity = 0;
			ySpeed = 0;

		}
				if(place_meeting(x + xSpeed, y, CollisionGUP)){
            vspeed = 0.1;
			gravity = 0;
			xSpeed = 0;

		}
		if(place_meeting(x, y + ySpeed, CollisionGUP)){
            vspeed = 0.1;
			gravity = 0;
			ySpeed = 0;

		}
				if(place_meeting(x + xSpeed, y, Collision)){
			xSpeed = 0;

		}
		if(place_meeting(x, y + ySpeed, Collision)){
          
			ySpeed = 0;

		}
	}

	x += xSpeed;
	y += ySpeed;

}
else if (room == itemScreen) {
	
}	