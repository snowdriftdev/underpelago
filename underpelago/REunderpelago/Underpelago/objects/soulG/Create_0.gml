xSpeed = 0
ySpeed = 0

playerSpeed = 4

// Spawn the hurtbox on your preferred layer
my_hurtbox = instance_create_layer(x, y, Collision, HurtBox);

// Link it to this character
my_hurtbox.owner = soulG;

//Hp?
hp_max = 99
hp = hp_max
draw_text(32, 32, "HP: " + string(hp) + " / " + string(hp_max));
// Invincibility frames
is_invincible = false;
invincible_duration = 60;