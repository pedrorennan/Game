spd = .6;
alvo = objTotem;
modo = "andar";
atirou = false;

function followTotem() 
{
	if (instance_exists(alvo)) 
	{
		var _dir = point_direction(x, y, alvo.x, alvo.y);
		
		var distance = x - alvo.x;
		
		if (distance >= 0) 
		{
			image_xscale = -1;
		}
		else if (_dir <= 0) 
		{
			image_xscale = 1;
		}

		if (distance < 0) 
		{
			distance *= -1;
		}

		if (distance <= 58)
		{
			modo = "atacar";
			spd = 0;
		}
		
		x += lengthdir_x(spd, _dir);
	}
	
}

function attack() 
{
	sprite_index = sprEnemyAttack;
	image_speed = 0.5;
	if (image_index >= 7 && !atirou)
	{
		atirou = true;
	}
	if (image_index < 1) 
	{
		atirou = false;
	}
}