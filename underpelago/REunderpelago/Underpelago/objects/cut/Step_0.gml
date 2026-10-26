if (timer > 0) {
    timer -= 1;
} else {
    // Switch to the next room when time is up
    room_goto(Room1);
}

if (timer6 > 0) {
    timer6 -= 1;
} else {
    // Switch to the next room when time is up
    room_goto(itemScreen);
}