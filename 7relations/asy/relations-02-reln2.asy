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

fill(box((1,3),(3,4)),heavygreen+opacity(0.5));

draw((1,3)--(1,4),heavygreen);
draw((1,4)--(3,4),heavygreen);
draw((3,4)--(3,3),heavygreen+Dotted);
draw((3,3)--(1,3),heavygreen+Dotted);

pair f(real t){return (2t+1,t^2);}
draw(graph(f,0.5,2),heavygreen);
dot(f(0.5),heavygreen);
dot(f(2),heavygreen);


