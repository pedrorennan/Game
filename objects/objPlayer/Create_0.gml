// Inherit the parent event
event_inherited();

spd = 2;
grav = .3;

jumpSpeed = -5;

spriteRun = sprPlayerRun;
spriteIdle = sprPlayerIdle;

function input_player() 
{
	var left, right, jump, xDir;
	
	left = keyboard_check(ord("A"));
	right = keyboard_check(ord("D"));
	jump = keyboard_check(vk_space);
	
	xDir = right - left;
	
	spdh = (right - left) * spd;
	
	var onGround = place_meeting(x,y+1, objBlock);
	
	if (xDir != 0) 
	{
		image_xscale = xDir;
	}
	
	if (onGround) 
	{
		if (xDir != 0) 
		{
			sprite_index = spriteRun;
		}
		else 
		{
			sprite_index = spriteIdle;
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
	else 
	{
	}
}
