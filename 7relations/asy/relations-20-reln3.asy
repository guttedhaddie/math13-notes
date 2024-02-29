settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120,0);

xaxis(0,4,red,RightTicks(new real[]{0,2,4},new real[]{1,3}));
yaxis(0,2,red,LeftTicks(new real[]{0,2},new real[]{1}));

real f(real x){return sqrt(x);}

draw(graph(f,0,4,operator..),blue+linewidth(1));

real x=1.7;

labelx("$x$",x,S,heavygreen);
labely("$\sqrt x$",sqrt(x),W,heavygreen);

draw((x,0)--(x,f(x))--(0,f(x)),heavygreen+dashed);

dot("$(x,\sqrt x)$",(x,f(x)),SE,heavygreen);

