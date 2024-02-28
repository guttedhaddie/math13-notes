settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(110,0);

xaxis(0,5.2,red,RightTicks(new real[]{0,2,4},new real[]{1,3,5}));
yaxis(0,5.2,red,LeftTicks(new real[]{0,2,4},new real[]{1,3,5}));

draw((-0.2,-0.2)--(5,5),dashed);

dotfactor=8;

fill(shift((3,2))*scale(0.22)*unitcircle,heavygreen);
fill(shift((2,2))*scale(0.22)*unitcircle,heavygreen);
fill(shift((2,3))*scale(0.22)*unitcircle,heavygreen);

dot((3,2),blue);
dot((4,1),blue);
dot((1,4),blue);
dot((5,2),blue);
dot((2,5),blue);
dot((2,2),blue);
dot((1,3),blue);
dot((3,1),blue);
dot((2,3),blue);
