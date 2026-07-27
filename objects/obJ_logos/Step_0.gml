var d = 0.015
if fadein
    black_alpha = approach(black_alpha, 0, d)
else
{
	black_alpha = approach(black_alpha, 1, 0.01)
    if ((black_alpha >= 1))
        instance_destroy()
}
