if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
%\input{../../preamble}
");
import graph;

size(320);

path ellipse(real x, real y){return xscale(x)*yscale(y)*unitcircle;}

pair b=(5,0);
pair c=(10,0);

pair a1=(0,0);
pair a2=(0,1);
pair b1=shift(b)*(0,0);
pair b2=shift(b)*(0,1);
pair b3=shift(b)*(0,-1);
pair c1=shift(c)*(0,0);
pair c2=shift(c)*(0,1);


draw(ellipse(1,2.5));
draw(shift(b)*ellipse(1,2.5));
draw(shift(c)*ellipse(1,2.5));

real sh=0.08;

draw(Label("$f$",align=N),subpath(a2..((a2+b2)/2+(0,8sh))..b2,sh,2-sh),Arrow);
draw(subpath(a1..((a1+b1)/2+(0,8sh))..b1,sh,2-sh),Arrow);
draw(Label("$g$",align=N),subpath(b2..((b2+c2)/2+(0,8sh))..c2,sh,2-sh),Arrow);
draw(subpath(b1..((b1+c1)/2+(0,8sh))..c1,sh,2-sh),Arrow);
draw(subpath(b3..((b3+c1)/2+(0,2sh))..c1,sh,2-sh),Arrow);

dot("$a_2$",a1,SW);
dot("$a_1$",a2,SW);
dot("$b_2$",b1,S);
dot("$b_1$",b2,S);
dot("$b_3$",b3,S);
dot("$c_2$",c1,SE);
dot("$c_1$",c2,SE);

label("$A$",(0,2));
label("$B$",shift(b)*(0,2));
label("$C$",shift(c)*(0,2));