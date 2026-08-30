var colx, coly;

colx = instance_place(x+spdh,y,objBlock);
coly = instance_place(x,y+spdv,objBlock);

if (colx) 
{
	if (spdh > 0) 
	{
		x = colx.bbox_left+(x-bbox_right);
	}
	if (spdh < 0) 
	{
		x = colx.bbox_right+(x-bbox_left);
	}
	spdh = 0;
}

if (coly) 
{
	if (spdv > 0) 
	{
		x = coly.bbox_top+(x-bbox_bottom);
	}
	if (spdv < 0) 
	{
		x = coly.bbox_bottom+(x-bbox_up);
	}
	spdv = 0;
}

x += spdh;
y += spdv;