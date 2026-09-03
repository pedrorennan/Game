alarm[0] = (room_speed * 3);

spawnEnemyA = [512, 232];
spawnEnemyB = [-16, 232];

boss = false;

inimigosMortos = 0;

inimigosMax = objController.wave * 2;
inimigosTotais = inimigosMax;

enemy = objEnemy;


function spawnar() 
{
	if (inimigosMortos == inimigosMax) 
	{
		objController.wave++;
		inimigosMax = objController.wave * 2;
		inimigosMortos = 0;
		inimigosTotais = inimigosMax;
	}
	if (objController.wave == 2) 
	{
		alarm[1] = (room_speed * 1);
	}
}
