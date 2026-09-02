if (!instance_exists(objPlayer)) 
{
	if (keyboard_check(vk_space))
	{
		room_restart();
	}
}

if (wave == 5) 
{
	objSpawner.enemy = objBlock;
}