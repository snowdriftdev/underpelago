//Controls
var rightKey = keyboard_check(vk_right)
var leftKey = keyboard_check(vk_left)
var downKey = keyboard_check(vk_down)
var upKey = keyboard_check(vk_up)

var wall = box
//movement
xSpeed = (rightKey - leftKey) * playerSpeed
ySpeed = (downKey - upKey) * playerSpeed

//Collision
if (instance_exists(soulF)) {
	if(place_meeting(x + xSpeed, y, Collision)){

		xSpeed = 0

	}
	if(place_meeting(x, y + ySpeed, Collision)){

		ySpeed = 0

	}
}
if (instance_exists(my_hurtbox)) {
    my_hurtbox.x = soulF.x + 15;
    my_hurtbox.y = soulF.y - 10;
    my_hurtbox.image_xscale = image_xscale; // Flips with your character if facing left/right
}



x += xSpeed
y += ySpeed


