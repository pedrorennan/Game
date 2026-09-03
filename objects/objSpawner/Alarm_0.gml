if (inimigosTotais > 0) 
{
	instance_create_layer(spawnEnemyA[0], spawnEnemyA[1], "instances", enemy);
	instance_create_layer(spawnEnemyB[0], spawnEnemyB[1], "instances", enemy);
	inimigosTotais-=2;
	alarm[0] = (room_speed * 3);
}


