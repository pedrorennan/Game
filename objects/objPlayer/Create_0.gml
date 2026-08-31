// Inherit the parent event
event_inherited();

atacando = false;

spd = 2;
grav = .3;

cooldown = 0;
cooldownTime = game_get_speed(gamespeed_fps) * 1;

jumpSpeed = -5;

spriteRun = sprPlayerRun;
spriteIdle = sprPlayerIdle;
spriteAttack = sprPlayerAttack;

function alterarSprite(sprite) 
{
	sprite_index = sprite;
}

function input_player() 
{
	var left, right, jump, xDir;
	
	left = keyboard_check(ord("A"));
	right = keyboard_check(ord("D"));
	jump = keyboard_check(vk_space);
	
	xDir = right - left;
	if (!atacando) {spdh = (right - left) * spd;}
	
	var onGround = place_meeting(x,y+1, objBlock);
	
	if (xDir != 0 && !atacando) 
	{
		image_xscale = xDir;
	}
	
	if (onGround) 
	{
		if (xDir != 0 && !atacando) 
		{
			alterarSprite(spriteRun)
		}
		else if (xDir == 0 && !atacando)
		{
			alterarSprite(spriteIdle)
		}
	}
	
	if (onGround) 
	{
		if (jump) 
		{
			spdv = jumpSpeed;
		}
	}
	else 
	{
		spdv += grav;
	}
	
	if (keyboard_check(ord("F")) && cooldown <= 0) 
	{
		atacando = true;
		alterarSprite(spriteAttack);
}

function repararDrone() 
{
		
	var onDrone = place_meeting(x, y, objDrone);
	if (onDrone) 
	{
		if (keyboard_check(ord("E")))
		{
			drone.ativo = true;
		}
	}
}}

function attack() 
{

	if (place_meeting(x,y,objEnemy))
	{
		var enemy = instance_place(x,y,objEnemy) 
		{
			if (enemy != noone) 
			{
				instance_destroy(enemy);
			}
		}
	}
}