if (alvo != noone) 
{
	if (!instance_exists(alvo)) {instance_destroy(self)}
	goToEnemy();
}

if (timer > 0) {timer-=1}

if (timer <= 0) {instance_destroy();}