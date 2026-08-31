if (modo == "andar") 
{
	followTotem();
}
else if (modo == "atacar") 
{
	attack();
}

if (pv <= 0)
{
	sprite_index = sprEnemyDamage;
	if (image_index >= image_number - 1) 
	{
		instance_destroy();	
	}
}