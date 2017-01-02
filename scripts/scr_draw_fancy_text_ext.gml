//scr_draw_fancy_text_ext(x,y,font,colour,text)

var _x = argument[0];
var _y = argument[1];
var _font = argument[2];
var _colour = argument[3];
var _text = argument[4];
var _halign = fa_center;
var _valign = fa_middle;
if (argument_count > 5)
    _halign = argument[5];
if (argument_count > 6)
    _valign = argument[6];
    
draw_set_font(_font);    
    
draw_set_halign(_halign);
draw_set_valign(_valign);
draw_set_colour(c_black);
draw_text(_x+2,_y+2,_text)
draw_set_colour(_colour);
draw_text(_x,_y,_text)
