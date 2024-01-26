settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(100,100);


draw(circle((0,0),1));

label("$A$",(0,-0.0));

dot("$a_1$",0.6*dir(30));
dot("$a_2$",0.5*dir(130));
dot("$a_3$",0.75*dir(290));
dot("$x$",1.3*dir(220));
