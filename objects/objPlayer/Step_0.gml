input_player();
repararDrone();

if (cooldown > 0) {cooldown-=1}

if (image_index >= 6) 
{
	attack();
	if (image_index >= 10) 
	{
		atacando = false;
		alterarSprite(spriteIdle);
		cooldown = cooldownTime;
	}

}