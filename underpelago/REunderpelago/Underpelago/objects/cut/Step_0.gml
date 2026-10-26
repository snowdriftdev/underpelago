if (timer > 0) {
    timer -= 1;
} else {
    // Switch to the next room when time is up
    room_goto(Room1);
}

<<<<<<< HEAD
if (timer6 > 0) {
    timer6 -= 1;
} else {
    // Switch to the next room when time is up
    room_goto(itemScreen);
=======
if (room == Intro) {
	if (keyboard_check_pressed(vk_enter)) {
	    room_goto(Room1);
	}
>>>>>>> 8381feade834a5a8eae8b8895cae0bf85553cac5
}