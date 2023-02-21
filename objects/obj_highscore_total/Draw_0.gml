// Draw instance itself
draw_self();

// Change font and alignment
draw_set_font(fnt_score);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw total highscore
// string() is used to convert the highscore from a number
// into a text string
draw_text(x, y, "Best Total " + string(round(global.highscore_total)));

// Reset alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);