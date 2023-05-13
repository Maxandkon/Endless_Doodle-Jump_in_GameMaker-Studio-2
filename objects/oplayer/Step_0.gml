/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(ord("R")) or y > 700){game_restart();}

KLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
KRight = keyboard_check(vk_right) || keyboard_check(ord("D"));

x += xspd * (KRight - KLeft); 

if (x > 460) { x = 0}
if (x < -10) { x = 450}

if (y < 350  and yp < 0) {
	Ofloor.check = 1;	
	yp +=1;
	Ofloor.yp = -2;
	
	Ochecker.checker -= yspd*yp;
	
	
	//Ofloor.y -= yp;
}
else{
	if (yp < 10){ yp +=1; Ochecker.checker -= yspd*yp;}
	if (yp > 0){ if place_meeting(x,y-1,Ofloor){yp = -20;}}
	
	y += yspd * yp;
	Ofloor.check = 0;
}
