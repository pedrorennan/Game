spd = 1.5;
alvo = noone;
timer = game_get_speed(gamespeed_fps) * 10;


function goToEnemy() 
{
	if (instance_exists(alvo)) 
	{
		var distance = x - alvo.x;
	
		var _dir;

		if (distance > 0) {_dir = point_direction(x, y, alvo.x-10, alvo.y);}
		if (distance < 0) {_dir = point_direction(x, y, alvo.x+10, alvo.y);}

		x += lengthdir_x(spd, _dir);
		y += lengthdir_y(spd, _dir);
		
	}
}