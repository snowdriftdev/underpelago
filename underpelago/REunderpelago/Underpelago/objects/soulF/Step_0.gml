if (room == Room1) {
	//Controls
	var rightKey = keyboard_check(vk_right);
	var leftKey = keyboard_check(vk_left);
	var downKey = keyboard_check(vk_down);
	var upKey = keyboard_check(vk_up);

	var wall = box;
	//movement
	xSpeed = (rightKey - leftKey) * playerSpeed;
	ySpeed = (downKey - upKey) * playerSpeed;

	fWidth = soulF.sprite_width

	//Hurtbox
	if (instance_exists(my_hurtbox)) {   
		var target_width = .25 * fWidth;   // Current width including its scale
		var target_height = fWidth - 8; // Current height including its scale

		// Divide target size by the hurtbox's original, unscaled sprite dimensions
		my_hurtbox.image_xscale = target_width / sprite_get_width(my_hurtbox.sprite_index);
		my_hurtbox.image_yscale = target_height / sprite_get_height(my_hurtbox.sprite_index);
	
		my_hurtbox.x = soulF.x + ((.5 * fWidth) - (.5 * my_hurtbox.sprite_width));
	    my_hurtbox.y = soulF.y + 8;
	}
	//Hitbox
	//Hitbox passing through hurtbox
	//Hitbox damage
	//Hp gain / lose
	//Collision
	if (instance_exists(soulF)) {
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
