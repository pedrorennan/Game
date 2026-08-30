if (modo == "andar") 
{
	followTotem();
}
else if (modo == "atacar") 
{
	attack();
}

if (place_meeting(x,y,objDroneAttack))
{
	sprite_index = sprEnemyDamage;
	if (image_index >= image_number - 1) 
	{
		instance_destroy();	
	}
}