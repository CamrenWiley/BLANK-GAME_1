var halfw = w * 0.5;
var radius_x = 15;
var radius_y = 15;

//Draw The Box
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(x-halfw-border,y-h-(border*2),x+halfw+border,y,radius_x,radius_y,false);
draw_sprite(sMarker,0,x,y);
draw_set_alpha(1);
 
//draw box
DrawSetText(c_white, fSign, fa_center, fa_top);
//DrawSetText(c_white, fSign, fa_center, fa_top);
draw_text(x,y-h-border,text_current);


