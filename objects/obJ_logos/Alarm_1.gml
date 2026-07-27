    var i = 0;
    showTourPizza = false
    repeat (sprite_get_number(spr_tourdepizzadebris))
    {
        instance_create(thing_hsp, thing_vsp, obj_enemycorpse)
        {
			depth = i
			sprite_index = spr_tourdepizzadebris
			image_index = i
			image_xscale = 1
            hsp = random_range(-8, 8)
            vsp = random_range(-8, -15)
			image_speed = 0
        }
        i++;
    }
	alarm[2] = 170