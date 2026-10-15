var hp_percent = (hp / hp_max) * 100;
draw_set_alpha(1);
draw_healthbar(32, 32, 200, 50, hp_percent, c_red, c_yellow, c_yellow, 0, true, true);
draw_self();