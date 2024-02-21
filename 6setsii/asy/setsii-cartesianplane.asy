settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120);

xaxis("$x$",-2.3,4.7,red,RightTicks(new real[]{-2,2,4},new real[]{-1,1,3}));
yaxis("$y$",-2.3,4.7,red,LeftTicks(new real[]{-2,2,4},new real[]{-1,1,3}));

dot("$(2,3)$",(2,3),NE,blue);
draw((2,0)--(2,3)--(0,3),blue+dashed);

