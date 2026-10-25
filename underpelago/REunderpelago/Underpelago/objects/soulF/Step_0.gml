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
	if(hp <= 88){
		playerSpeed = 4.5;
	}
	if(hp <= 77){
		playerSpeed = 4.75;
	}
	if(hp <= 66){
		playerSpeed = 5;
	}
	if(hp <= 55){
		playerSpeed = 5.5;
	}	
	if(hp <= 44){
		playerSpeed = 5.75;
	}	
	if(hp <= 33){
		playerSpeed = 6;
	}
	if(hp <= 22){
		playerSpeed = 6.5;
	}	
	if(hp <= 11){
		playerSpeed = 6.75;
	}	
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
	//Hitbox passing through hurtbox
	if(instance_exists(my_hurtbox)){
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
    instance_destroy();
}
	//Collision
	if (instance_exists(soulF)) {
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
	if (timer1 > 0) {
    timer1 -= 1;
	} else {
		var _x = x;
		var _y = y;
		var _layer = layer;
		instance_destroy();
		instance_create_layer(_x, _y, _layer, soulGUP);
	}
}
else if (room == itemScreen) {
	var item = itemButtonObject
	var act = actButtonObject
	var fight = fightButtonObject
	
	var itemButtonPos = 437
	var actButtonPos = 760
	var fightButtonPos = 114
	var buttonY = 647
	
	var buttonPressed = {
		x: 150,
		y: 340
	}
	buttonText = {
		x: 200,
		y: 340
	}
	
	if (soulF.x == fightButtonPos && soulF.y == buttonY) {
		fight.sprite_index = fightButtonPressed
		if (keyboard_check_pressed(vk_right)) {
			fight.sprite_index = fightButton
			soulF.x = itemButtonPos
		}
		else if (keyboard_check_pressed(vk_left)) {
			fight.sprite_index = fightButton
			soulF.x = actButtonPos
		}
		else if (keyboard_check_pressed(vk_enter)) {
			fightButtonClicked = true;
			soulF.x = buttonPressed.x
			soulF.y = buttonPressed.y
		}
	}
	else if (soulF.x == itemButtonPos && soulF.y == buttonY) {
		item.sprite_index = itemButtonPressed
		if (keyboard_check_pressed(vk_right)) {
			item.sprite_index = itemButton
			soulF.x = actButtonPos
		}
		else if (keyboard_check_pressed(vk_left)) {
			item.sprite_index = itemButton
			soulF.x = fightButtonPos
		}
		else if (keyboard_check_pressed(vk_enter)) {
			itemButtonClicked = true;
			soulF.x = buttonPressed.x
			soulF.y = buttonPressed.y
		}
	}
	else if (soulF.x == actButtonPos && soulF.y == buttonY) {
		act.sprite_index = actButtonPressed
		if (keyboard_check_pressed(vk_left)) {
			act.sprite_index = actButton
			soulF.x = itemButtonPos
		}
		else if (keyboard_check_pressed(vk_right)) {
			act.sprite_index = actButton
			soulF.x = fightButtonPos
		}
		else if (keyboard_check_pressed(vk_enter)) {
			actButtonClicked = true;
			soulF.x = buttonPressed.x
			soulF.y = buttonPressed.y
		}
	}
	if (fightButtonClicked && keyboard_check_pressed(ord("X"))) {
		soulF.x = fightButtonPos
		soulF.y = buttonY
		fightButtonClicked = false
	}
	else if (itemButtonClicked && keyboard_check_pressed(ord("X"))) {
		soulF.x = itemButtonPos
		soulF.y = buttonY
		itemButtonClicked = false
	}
	else if (actButtonClicked && keyboard_check_pressed(ord("X"))) {
		soulF.x = actButtonPos
		soulF.y = buttonY
		actButtonClicked = false
	}
}