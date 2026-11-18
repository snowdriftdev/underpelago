if (room == Room1) {
	var hp_percent = (hp / hp_max) * 100;
	draw_set_alpha(1);
	draw_healthbar(32, 32, 200, 50, hp_percent, c_red, c_yellow, c_yellow, 0, true, true);
}
else if (room == itemScreen) {
	buttonText = {
		x: 85,
		y: 272
	}
	
	buttonTextLowerLeft = {
		y: 425
	}
	
	nameText = {
		x: 32,
		y: 398
	}
	
	if (fightButtonClicked || itemButtonClicked || actButtonClicked || actOption || iDidntLie || itemOption) {
		buttonText = {
			x: 200,
			y: 340
		} 
	}
	display_text = "You   realized   it   was   Insanity   Sans   \nwho   was   helping    you..."
	display_text_lower_left = ""
	name = "AAAAAA"
	if (fightButtonClicked) {
		display_text = "Insanity Sans"
	}
	else if (itemButtonClicked) {
		display_text = "Bro IDK what items they have :sob:"
	}
	else if (actButtonClicked) {
		display_text = "Insanity Sans"
	}
	
	if (attack) {
		// TODO: insert fight code here (need assets)
	}
	else if (itemOption) {
		//TODO: insert item code here (need to know their items
	}
	else if (actOption) {
		display_text = "Why did you lie to us?"
	}
	
	if (iDidntLie) {
		display_text = "Lie? When did I lie. I wanted you to put my soul together. You did. For that I'm grateful. \nDoesn't mean I won't kill you."
	}
	else if (itemOption) {
		display_text = "Placeholder items"
		display_text_lower_left = "more Placeholder items"
	}
	
	draw_set_font(ItemFont);
	draw_text(buttonText.x, buttonText.y, display_text);
	draw_text(buttonText.x, buttonTextLowerLeft.y, display_text_lower_left);
	draw_set_font(nameFont);
	draw_text(nameText.x, nameText.y, name);
}
draw_self();