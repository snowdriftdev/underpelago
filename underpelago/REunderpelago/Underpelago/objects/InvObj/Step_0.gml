if (timer6 > 0) {
    timer6 -= 1;
} else {
var _x = x;
var _y = y;
var _layer = layer;
instance_destroy();
instance_create_layer(_x, _y, _layer, Blaster);
}