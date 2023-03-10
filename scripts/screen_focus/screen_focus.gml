/// @description Draws rectangles with a "gap" at the coordinates. Darkens the screen except for a defined area
/// @param x1 X of top-left corner
/// @param y1 Y of top-left corner
/// @param x2 X of bottom-right corner
/// @param y2 Y of bottom-right corner
function areaFocus(x1, y1, x2, y2)
{
	var gold = make_colour_rgb(212, 175, 55);
	draw_set_alpha(0.75);
    draw_set_color(c_black);
    // Draw the top and bottom rectangles
    draw_rectangle(0, 0, room_width, y1, false);
    draw_rectangle(0, y2, room_width, room_height, false);
    // Draw the left and right rectangles with gaps
    draw_rectangle(0, y1, x1, y2, false);
    draw_rectangle(x2, y1, room_width, y2, false);
    // Draw the golden outline
	draw_line_width_colour(x1, y1, x2, y1, 5, gold, gold);
	draw_line_width_colour(x1, y2, x2, y2, 5, gold, gold);
	draw_line_width_colour(x1, y1, x1, y2, 5, gold, gold);
	draw_line_width_colour(x2, y1, x2, y2, 5, gold, gold);
    // Reset draw settings
    draw_set_color(c_white);
    draw_set_alpha(1);
}