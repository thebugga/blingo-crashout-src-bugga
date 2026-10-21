
function player_buzzsaw(){
	hsp = movespeed
	
	if p_move != 0
	movespeed = approach(movespeed, (p_move * (sprite_index == spr_playerP_buzzsawdown ? 12 : 8)), 1)
	else
	movespeed = approach(movespeed, 0, 0.5)

if grounded && input.dash.check && (vsp >= 0)
{
	if p_move != 0
	xscale = p_move
	jumpstop = true
	if sprite_index != spr_playerP_buzzsawdown
	{
	state = states.mach3
	movespeed = 12
	reset_anim(spr_playerP_mach3)
	}
	else
	{
					shake_camera(5, 15 / room_speed)
			scr_sound_3d(sfx_groundpound, x, y)
			create_effect(x, y + 2, spr_groundpoundeffect)
		state = states.mach2
	movespeed = 14.5
	vsp = -17
	reset_anim(spr_playerP_twirl)
	}
	flash = 8
}

if grounded && !input.dash.check && (vsp >= 0)
{
	state = states.normal
	movespeed = abs(hsp)
}

if input.down.pressed && sprite_index != spr_playerP_buzzsawdown
{
	reset_anim(spr_playerP_buzzsawdown)
vsp = -8
}

if sprite_index == spr_playerP_buzzsawdown
{
	if vsp <= 20
	vsp += 0.5
}

instakill = true
aftimg_timers.blur.do_it = true

		if input_buffers.grab > 0
	{
		input_buffers.grab = 0
		reset_anim(spr_playerP_buzzsawcancel)
		if p_move != 0
	xscale = p_move
	vsp = -10
		state = states.mach3
		movespeed = 12
		image_speed = 0.35
		vsp = -10
	}
}