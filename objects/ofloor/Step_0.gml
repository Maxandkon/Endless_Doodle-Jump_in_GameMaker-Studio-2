/// @description Insert description here
// You can write your code in this editor



if (flag == 1){
//if (place_meeting(Oplayer,x,y)){
	if (x < 225) {xr = random_range(225,390);}
	if (x > 224) {xr = random_range(10,224);}
	
	instance_create_layer(xr,y-80,"Instances",Ofloor);
	
	flag = 0;
}

if(check == 1){
	if (yp < 10){ yp +=1; }
	y -= Oplayer.yp;
	Ochecker.checker -= Oplayer.yp;
	
	
	//if (yp > 0){
		//if place_meeting(x,y-1,Oplayer){ yp = -20; }
	//}
	
}


if(y>720){
	instance_destroy();	
}
