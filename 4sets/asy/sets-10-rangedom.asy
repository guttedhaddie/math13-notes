settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(160,130,IgnoreAspect);

real dx=0.05;
real f(real x){return x^2;}
draw(graph(f,-3,2-dx),blue+linewidth(1));

xaxis("$x$",-3.5,2.5,red,RightTicks(new real[]{-3,-2,-1,0,1,2}));
yaxis("$f(x)$",0,10,red,LeftTicks(new real[]{3,6,9}));

dotfactor=10;
dot((-3,f(3)),blue);
dot((2,f(2)),blue,NoFill);

draw((-3,0)--(2-1.4dx,0),purple+linewidth(1));
draw((0,0)--(0,9),heavygreen+linewidth(1));
dot((0,0),heavygreen);
dot((0,9),heavygreen);
dot((2,0),purple,NoFill);
dot((-3,0),purple);

label(rotate(90)*"range",(0.5,4.5),heavygreen);
label("domain",(-0.5,-2.9),purple);
