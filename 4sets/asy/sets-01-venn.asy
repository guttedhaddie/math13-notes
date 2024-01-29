settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120);


draw(yscale(0.75)*unitcircle);

label("$A$",(0,-0.0));

dot("$a_1$",0.6*dir(30));
dot("$a_2$",0.5*dir(130));
dot("$a_3$",0.61*dir(320));
dot("$x$",0.7*dir(190));
dot("$y$",1.3*dir(210));
