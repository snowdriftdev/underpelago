if (room == Room1) {
	var hp_percent = (hp / hp_max) * 100;
	draw_set_alpha(1);
	draw_healthbar(32, 32, 200, 50, hp_percent, c_red, c_yellow, c_yellow, 0, true, true);
}


else if (room == itemScreen) {
	display_text = "You realized it was Insanity Sans who was helping you... don't you feel bad for helping him now? What about poor\nCarter and Anderson who were wrongfully FRAMED"
	if (fightButtonClicked) {
		display_text = "Insanity Sans"
	}
	else if (itemButtonClicked) {
		display_text = "Bro IDK what items they have :sob:"
	}
	else if (actButtonClicked) {
		display_text = "Insanity Sans"
	}
	draw_text(buttonText.x, buttonText.y, display_text);
}
draw_self();