var d = 0.015
if fadein
    black_alpha = approach(black_alpha, 0, d)
else
{
	black_alpha = approach(black_alpha, 1, 0.01)
    if ((black_alpha >= 1))
        instance_destroy()
}

showTourPizza--

if showTourPizza == 0
{
	for (var i = 0; i < sprite_get_number(spr_tourdepizzadebris); i += 1)
	{
	    with instance_create(screen_w / 2, screen_h / 2, obj_enemycorpse)
	    {
			depth = i
			sprite_index = spr_tourdepizzadebris
			image_index = i
			image_xscale = 1
	        hsp = random_range(-8, 8)
	        vsp = random_range(-8, -15)
			image_speed = 0
	    }
	}
	alarm[3] = 170
	credit_index = 1
}
