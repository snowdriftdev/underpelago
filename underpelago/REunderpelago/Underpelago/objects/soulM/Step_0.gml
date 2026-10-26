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
    
	fWidth = soulM.sprite_width
			
		//Hurtbox
	if (instance_exists(my_hurtbox)) {   
		var target_width = .25 * fWidth;   // Current width including its scale
		var target_height = fWidth - 8; // Current height including its scale

		// Divide target size by the hurtbox's original, unscaled sprite dimensions
		my_hurtbox.image_xscale = target_width / sprite_get_width(my_hurtbox.sprite_index);
		my_hurtbox.image_yscale = target_height / sprite_get_height(my_hurtbox.sprite_index);
	
		my_hurtbox.x = soulM.x + ((.5 * fWidth) - (.5 * my_hurtbox.sprite_width));
	    my_hurtbox.y = soulM.y + 8;
	}
		if (instance_exists(my_Sheild)) {   
		if(place_meeting(x,y, HitboxBlaster)){
			var target_width = .25 * fWidth;   // Current width including its scale
		var target_height = fWidth - 8; // Current height including its scale

		// Divide target size by the hurtbox's original, unscaled sprite dimensions
		my_Sheild.image_xscale = target_width / sprite_get_width(my_Sheild.sprite_index);
		my_Sheild.image_yscale = target_height / sprite_get_height(my_Sheild.sprite_index);
		my_Sheild.x = + ((1.5 * fWidth) - (1.5 * my_Sheild.sprite_width));
	    my_Sheild.y = + 8;
		}
		if(place_meeting(x,y, HitboxBone)){
			var target_width = .25 * fWidth;   // Current width including its scale
		var target_height = fWidth - 8; // Current height including its scale

		// Divide target size by the hurtbox's original, unscaled sprite dimensions
		my_Sheild.image_xscale = target_width / sprite_get_width(my_Sheild.sprite_index);
		my_Sheild.image_yscale = target_height / sprite_get_height(my_Sheild.sprite_index);
		my_Sheild.x = + ((1.5 * fWidth) - (1.5 * my_Sheild.sprite_width));
	    my_Sheild.y = + 8;
		}
	else {
	    var target_width = .25 * fWidth;   // Current width including its scale
		var target_height = fWidth - 8; // Current height including its scale

		// Divide target size by the hurtbox's original, unscaled sprite dimensions
		my_Sheild.image_xscale = target_width / sprite_get_width(my_Sheild.sprite_index);
		my_Sheild.image_yscale = target_height / sprite_get_height(my_Sheild.sprite_index);
		my_Sheild.x = soulM.x + ((1.5 * fWidth) - (1.5 * my_Sheild.sprite_width));
	    my_Sheild.y = soulM.y + 8;
	}
}
	//Hitbox passing through hurtbox
	if(instance_exists(soulM)){
	if(place_meeting(x + xSpeed,y,CollisionSheild)){
          xSpeed = 0;
		}
else if(instance_exists(my_hurtbox)){
		if(place_meeting(x + xSpeed, y, HitboxBone)){
			hp -= 0.16;
			hp = clamp(hp, 0, hp_max);
		}
		if(place_meeting(x, y + ySpeed, HitboxBone)){
			hp -= 0.16;
			hp = clamp(hp, 0, hp_max);
		}
		if(place_meeting(x + xSpeed, y, HitboxBlaster)){
			hp -= 0.36;
			hp = clamp(hp, 0, hp_max);
		}
		if(place_meeting(x, y + ySpeed, HitboxBlaster)){
			hp -= 0.36;
			hp = clamp(hp, 0, hp_max);
		}
	}
	//Hp gain / lose
    if (hp <= 0) {
       instance_destroy()
    }

	//Collision
	if (instance_exists(soulM)) {
		if(place_meeting(x + xSpeed, y, CollisionG)){
			xSpeed = 0;

		}
		if(place_meeting(x, y + ySpeed, CollisionG)){
			ySpeed = 0;

		}
				if(place_meeting(x + xSpeed, y, CollisionGUP)){
			xSpeed = 0;

		}
		if(place_meeting(x, y + ySpeed, CollisionGUP)){
			ySpeed = 0;

		}
		if(place_meeting(x + xSpeed, y, PlatformUP)){
			xSpeed = 0;

		}
		if(place_meeting(x, y + ySpeed, PlatformUP)){
			ySpeed = 0;

		}
				if(place_meeting(x + xSpeed, y, CollisionL)){
			xSpeed = 0;

		}
		if(place_meeting(x, y + ySpeed, CollisionL)){
          
			ySpeed = 0;

		}
		if(place_meeting(x + xSpeed, y, CollisionR)){
			xSpeed = 0;

		}
		if(place_meeting(x, y + ySpeed, CollisionR)){
          
			ySpeed = 0;

		}
	}

	x += xSpeed;
	y += ySpeed;

}
if (room == itemScreen) {

		if (soulF.x == 114 && soulF.y == 647) {
		var fight = fightButtonObject
		fight.sprite_index = fightButtonPressed
		if (keyboard_check_pressed(vk_right)) {
			fight.sprite_index = fightButton
			soulF.x = 437
			soulF.y = 647
		}
	}
	else if (soulF.x == 437 && soulF.y == 647) {
		var item = itemButtonObject
		item.sprite_index = itemButtonPressed
		if (keyboard_check_pressed(vk_right)) {
			item.sprite_index = itemButton
			soulF.x = 760
			soulF.y = 647
		}
		else if (keyboard_check_pressed(vk_left)) {
			item.sprite_index = itemButton
			soulF.x = 114
			soulF.y = 647
		}
	}
	else if (soulF.x == 760 && soulF.y == 647) {
		var act = actButtonObject
		act.sprite_index = actButtonPressed
		if (keyboard_check_pressed(vk_left)) {
			act.sprite_index = actButton
			soulF.x = 437
			soulF.y = 647
		}
	}
}
}