alarm[0] = (room_speed * 3);

spawnEnemyA = [512, 232];
spawnEnemyB = [-16, 232];
	
enemy = objEnemy;

function spawnarMinions() 
{
	inimigosTotais = objController.wave * 2;
	inimigosAtuais = 0;
	if (inimigosAtuais == inimigosTotais) 
	{
		objController.wave++;
		inimigosAtuais = 0;
		alarm[0] = -1;
	}
}


function spawnarBoss() 
{
	alarm[1] = (room_speed * 10);
}