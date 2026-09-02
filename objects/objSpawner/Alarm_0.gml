if (inimigosAtuais != inimigosTotais) 
{
	inimigosAtuais+=2;
	instance_create_depth(spawnEnemyA[0], spawnEnemyA[1], 1, enemy);
	instance_create_depth(spawnEnemyB[0], spawnEnemyB[1], 1, enemy);
	alarm[0] = (room_speed * 3);
}
