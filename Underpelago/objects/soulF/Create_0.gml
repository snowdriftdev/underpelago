xSpeed = 0
ySpeed = 0

playerSpeed = 4

// Spawn the hurtbox on your preferred layer
my_hurtbox = instance_create_layer(x, y, Collision, HurtBox);

// Link it to this character
my_hurtbox.owner = soulF;

// can we fix Desmon'd computer 