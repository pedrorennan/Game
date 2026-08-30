if (ativo) 
{
	image_blend = noone;
	followPlayer();
	if (!instance_exists(alvo)) 
	{
		droneTarget();
	}
	else 
	{
		if (cooldown <= 0 && instance_exists(alvo)) 
		{
			var laser = instance_create_layer(x, y, "instances", objDroneAttack);
			laser.alvo = alvo;
			cooldown = cooldownTime;
		}
	}

	if (cooldown > 0) {cooldown-=1}
}


