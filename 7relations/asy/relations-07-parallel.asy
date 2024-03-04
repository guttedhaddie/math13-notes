settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120);

draw(Label("$\ell_1$",W),(0,0)--(3,0));
draw(Label("$\ell_3$",W),(0,1)--(3,1));
draw("$\ell_2$",(0.1,1.2)--(2.9,-0.2),dir(180+aTan(1.6/3)));