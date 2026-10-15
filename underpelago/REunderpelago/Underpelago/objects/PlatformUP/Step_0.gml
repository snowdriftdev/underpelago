x -= 1;

	if(instance_exists(PlatformUP)){
		if(place_meeting(x,y,CollisionL)){
			has_touchedL = true;
			has_touchedR = false;
		}
		if(place_meeting(x,y,CollisionR)){
			has_touchedR = true;
			has_touchedL = false;
		}
		if(has_touchedL = true){
			x += 2;
		}
		if(has_touchedR = true){
			x -= 0;
		}
		if(place_meeting(x,y,soulGUP)){	
			if(has_touchedL = true){
			  soulGUP.x += 3;
			}
			if(has_touchedR = true){
			 soulGUP.x -= 3;
			}
		}
	}	