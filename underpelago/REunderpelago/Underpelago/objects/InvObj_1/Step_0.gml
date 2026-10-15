if (timer7 > 0) {
    timer7 -= 1;
} else {
var _x = x;
var _y = y;
var _layer = layer;
instance_destroy();
instance_create_layer(_x, _y, _layer, HitboxBlaster);
}