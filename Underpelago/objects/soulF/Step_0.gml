var rightKey = keyboard_check(vk_right)
var leftKey = keyboard_check(vk_left)
var downKey = keyboard_check(vk_down)
var upKey = keyboard_check(vk_up)

var wall = box

xSpeed = (rightKey - leftKey) * playerSpeed
ySpeed = (downKey - upKey) * playerSpeed

x += xSpeed
y += ySpeed