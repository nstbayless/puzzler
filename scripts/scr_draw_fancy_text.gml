scale = argument3;
pt = 12*scale;

fnt = f_12;
if (pt>13)
    fnt = f_13;
if (pt>14)
    fnt = f_14;
if (pt>16)
    fnt = f_16;
if (pt>18)
    fnt = f_18;
if (pt>20)
    fnt = f_20;
if (pt>22)
    fnt = f_22;
if (pt>24)
    fnt = f_24;
if (pt>26)
    fnt = f_26;
if (pt>28)
    fnt = f_28;
if (pt>30)
    fnt = f_30;
if (pt>36)
    fnt = f_36;
draw_set_font(fnt);    
    
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_black);
draw_text(f(argument0)+2,f(argument1)+2,argument2)
draw_set_colour(c_white);
draw_text(f(argument0),f(argument1),argument2)
