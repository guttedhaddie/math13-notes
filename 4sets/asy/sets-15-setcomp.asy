settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
%\input{../../preamble}
");
import graph;

size(320);

path ellipse(real x, real y){return xscale(x)*yscale(y)*unitcircle;}

pair a=(0,0);
pair b=(5,0);
pair c=(9.5,0);
pair C=(10,0);

draw(ellipse(1,2.5));
draw(shift(b)*ellipse(1,2.5));
draw(shift(C)*ellipse(1,2.5));

real sh=0.08;

draw(Label("$f$",align=N),subpath(a..((a+b)/2+(0,8sh))..b,sh,2-sh),Arrow);
draw(Label("$g$",align=N),subpath(b..((b+c)/2+(0,8sh))..c,sh,2-sh),Arrow);

path gof=subpath(a..((a+c)/2+(0,-15sh))..c,0.5sh,2-0.5sh);
draw(gof,Arrow);
label(Label("$g\circ f$",align=SE),relpoint(gof,0.65));

dot("$a$",a,SW);
dot("$f(a)$",b,S);
dot("$g(f(a))$",c,dir(-55));

label("$A$",a+(0,2));
label("$B$",b+(0,2));
label("$C$",C+(0,2));