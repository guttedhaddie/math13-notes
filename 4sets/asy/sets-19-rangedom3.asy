settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(200,150,IgnoreAspect);

real dx=0.05;
real f(real x){return x^2;}
draw(graph(f,-3,0));

xaxis("$x$",-3.5,2.5,red,RightTicks(new real[]{-3,-2,-1,0,1,2}));
yaxis("$y$",0,10,red,LeftTicks(new real[]{3,6,9}));

dotfactor=10;
dot((0,f(0)));
dot((-3,f(-3)));

draw((0,0)--(-3,0),blue+linewidth(1));
draw((0,0)--(0,9),heavygreen+linewidth(1));
dot((0,0),heavygreen+blue);
dot((0,9),heavygreen);
dot((-3,0),blue);

//label(rotate(90)*"range",(0.5,4.5),heavygreen);
//label("domain",(-0.5,-2.4),blue);

label("$y=h(x)$",(1,6));
