for (var i = 0; i < vidaAtual; i++) 
{
	draw_sprite(sprHeart, 1, heartsX + (i * heartsWidth) + (i * heartsSpace), heartsY);
}

draw_text_transformed(textWaveX, 0, objController.wave, 3, 3, 0);
draw_text_transformed(0, 250, objController.inimigosMortos, 3, 3, 0);