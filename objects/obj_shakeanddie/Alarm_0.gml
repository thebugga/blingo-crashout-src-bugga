with (instance_create(x, y, obj_enemycorpse))
{
	scr_sound(sfx_killenemy)
    sprite_index = other.sprite_index
    image_xscale = other.image_xscale
	if sprite_index == spr_pizzaface_dead
		scr_sound(sfx_pizzafacedead)
}
instance_destroy()
