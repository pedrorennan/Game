if (objPlayer.vivo) 
{
	if (!objPlayer.iFrame) 
	{
		objPlayer.iFrame = true;
		global.vidaPlayer -=1;
		objPlayer.alterarSprite(sprPlayerDamage);
		objPlayer.death();
		
	}
	
}
