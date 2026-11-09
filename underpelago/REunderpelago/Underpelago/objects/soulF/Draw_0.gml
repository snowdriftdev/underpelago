if (room == Room1) {
	var hp_percent = (hp / hp_max) * 100;
	draw_set_alpha(1);
	draw_healthbar(32, 32, 200, 50, hp_percent, c_red, c_yellow, c_yellow, 0, true, true);
}
else if (room == itemScreen) {
	buttonText = {
		x: 145,
		y: 325
	}
	display_text = "You realized it was Insanity Sans who was helping you... don't you feel bad for helping him now? \nWhat about poor Carter and Anderson who were wrongfully FRAMED"
	if (fightButtonClicked) {
		display_text = "Insanity Sans"
		buttonText = {
			x: 200,
			y: 340
		}
	}
	else if (itemButtonClicked) {
		display_text = "Bro IDK what items they have :sob:"
		buttonText = {
			x: 200,
			y: 340
		}
	}
	else if (actButtonClicked) {
		display_text = "Insanity Sans"
		buttonText = {
			x: 200,
			y: 340
		}
	}
	
	if (attack) {
		// TODO: insert fight code here (need assets)
	}
	else if (itemOption) {
		//TODO: insert item code here (need to know their items
	}
	else if (actOption) {
		display_text = "Why did you lie to us?"
		buttonText = {
			x: 200,
			y: 340
		}
	}
	
	if (iDidntLie) {
		display_text = "Lie? When did I lie. I wanted you to put my soul together. You did. For that I'm grateful. \nDoesn't mean I won't kill you."
	}
	
	draw_set_font(ItemFont);
	draw_text(buttonText.x, buttonText.y, display_text);
}
draw_self();