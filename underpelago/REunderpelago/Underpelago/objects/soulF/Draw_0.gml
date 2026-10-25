if (room == Room1) {
	var hp_percent = (hp / hp_max) * 100;
	draw_set_alpha(1);
	draw_healthbar(32, 32, 200, 50, hp_percent, c_red, c_yellow, c_yellow, 0, true, true);
}
else if (room == itemScreen) {
	if (fightButtonClicked) {
		var display_text = "Fight stuff and things and idk will fix later"
	    draw_text(buttonText.x, buttonText.y, display_text);
	}
	else if (itemButtonClicked) {
		var display_text = "Item stuff and things and idk will fix later"
	    draw_text(buttonText.x, buttonText.y, display_text);
	}
	else if (actButtonClicked) {
		var display_text = "Act stuff and things and idk will fix later"
	    draw_text(buttonText.x, buttonText.y, display_text);
	}
}
draw_self();