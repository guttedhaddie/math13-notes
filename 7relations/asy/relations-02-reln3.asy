settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(80,0);

path tri=(-2.8,-2.8)--(2.8,2.8)--(-2.8,2.8)--cycle;

fill(tri,cyan+opacity(0.4));


xaxis(-2.8,2.8,red,RightTicks(new real[]{-2,2},new real[]{-1,1}));
yaxis(-2.8,2.8,red,LeftTicks(new real[]{-2,2},new real[]{-1,1}));

labelx("$x$",2.6,red);
labely("$y$",2.7,red);