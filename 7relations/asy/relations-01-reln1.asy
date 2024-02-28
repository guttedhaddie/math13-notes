settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(80,0);

xaxis(0,5.2,red,RightTicks(new real[]{0,2,4},new real[]{1,3,5}));
yaxis(0,4.5,red,LeftTicks(new real[]{0,2,4},new real[]{1,3}));

dot((3,2),blue);
dot((4,1),blue);
dot((5,2),blue);
dot((2,2),blue);
dot((1,3),blue);
dot((2,3),blue);
