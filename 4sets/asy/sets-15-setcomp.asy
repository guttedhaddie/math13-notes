settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(180);

path ellipse(real x, real y){return xscale(x)*yscale(y)*unitcircle;}

pair a=(0,0);
pair b=(3,0);
pair c=(5.35,0);
pair C=(6,0);

draw(ellipse(1.1,1.7));
draw(shift(b)*ellipse(1.1,1.7));
draw(shift(C)*ellipse(1.1,1.7));

real sh=0.08;

draw(Label("$f$",align=N),subpath(a..((a+b)/2+(0,8sh))..b,sh,2-sh),Arrow);
draw(Label("$g$",align=N),subpath(b..((b+c)/2+(0,8sh))..c,sh,2-sh),Arrow);

path gof=subpath(a..((a+c)/2+(0,-15sh))..c,0.5sh,2-0.5sh);
draw(gof,red,Arrow);
label(Label("$g\circ f$",align=SE),relpoint(gof,0.7),red);

dot("$a$",a,SW);
dot("$f(a)$",b,S);
dot("$g\bigl(f(a)\bigr)$",c,dir(-55));

label("$A$",a-(0,2));
label("$B$",b-(0,2));
label("$C$",C-(0,2));