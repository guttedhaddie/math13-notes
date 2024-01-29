settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(100);

draw(scale(0.9)*unitcircle);
draw(shift((0.25,0))*xscale(1.6)*yscale(1.1)*unitcircle);

label("$A$",(0,0));
label("$B$",(1.4,0.0));