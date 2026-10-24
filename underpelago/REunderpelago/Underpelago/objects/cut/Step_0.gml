if (timer > 0) {
    timer -= 1;
} 
else {
    // Switch to the next room when time is up
    room_goto(Room1);
}

if (room == Intro) {
	if (keyboard_check_pressed(vk_enter)) {
	    room_goto(Room1);
	}
}