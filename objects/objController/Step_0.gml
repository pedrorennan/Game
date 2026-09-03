if (!instance_exists(objPlayer)) 
{
	if (keyboard_check(vk_space))
	{
		room_restart();
	}
}

if (wave == 2) 
{
	objSpawner.enemy = objBoss;
}

show_debug_message(wave)