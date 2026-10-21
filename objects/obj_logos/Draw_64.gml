
if showTourPizza
draw_sprite(spr_tourdepizza, 0, screen_w / 2, screen_h / 2)

if showBlingoTeam
draw_sprite(spr_blingoteam, 0, screen_w / 2, screen_h / 2)

draw_sprite(spr_introcredits, credit_index, screen_w / 2, screen_h / 2 - 75)

if black_alpha > 0
{
	draw_set_color(c_black)
	draw_set_alpha(black_alpha)
	draw_rectangle(0, 0, screen_w, screen_h, false)
	draw_reset_color()
}