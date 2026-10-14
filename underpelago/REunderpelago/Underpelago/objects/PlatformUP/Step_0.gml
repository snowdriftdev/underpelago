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
		if(place_meeting(x,y,soulG)){	
			if(has_touchedL = true){
			  soulG.x += 3;
			}
			if(has_touchedR = true){
			 soulG.x -= 3;
			}
		}
	}	