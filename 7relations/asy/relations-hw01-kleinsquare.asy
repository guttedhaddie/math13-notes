settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;


size(100,IgnoreAspect);

draw((0,0)--(1,0),red,MidArrow);
draw((1,1)--(0,1),red,MidArrow);
draw((0,0)--(0,1),blue,MidArrow);
draw((1,0)--(1,1),blue,MidArrow);

//draw((0,1/2)--(1,1/2),dashed);
//draw((1/2,0)--(1/2,1),dashdotted);
