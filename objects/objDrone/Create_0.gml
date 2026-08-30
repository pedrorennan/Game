spd = 1.5;
alvo = noone;
ativo = false;
image_blend = c_grey;
cooldown = 0;
cooldownTime = game_get_speed(gamespeed_fps) * 1.3;

function followPlayer() 
{
	if (instance_exists(objPlayer)) 
	{
		var _dir = point_direction(x, y, objPlayer.x-20, objPlayer.y-20);

		x += lengthdir_x(spd, _dir);
		y += lengthdir_y(spd, _dir);
		
	}
}

function droneTarget()
{
	var qtd = instance_number(objEnemy);
	for (var i = 0; i < qtd; i++) 
	{
		var inst = instance_find(objEnemy, i);
		if (alvo == noone || !instance_exists(alvo)) 
		{
			alvo = inst;
		}
		else 
		{
			var distInst = x - inst.x;
			var distAlvo = x - alvo.x;
			
			if (distInst > distAlvo) 
			{
				alvo = inst;
			}
		}
	}
}