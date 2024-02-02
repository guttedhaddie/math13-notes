settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(100,110,IgnoreAspect);

real dx=0.03;
real f(real x){return x^2;}
draw(graph(f,0,2-dx),blue+linewidth(1));

real x=1.65;
real y=x^2;

xtick(Label("$x$",align=S),x,S,purple);
ytick(Label("$y$",align=W),y,W,heavygreen);
draw((x,0)--(x,y)--(0,y),dotted+blue,Arrow(Relative(0.7),arrowhead=TeXHead));

xaxis(0,2.5,red,RightTicks(new real[]{-3,-2,-1,0,1,2}));
yaxis(0,4.5,red,LeftTicks(new real[]{0,2,4}));
//yaxis("$g(x)=h(x)$",0,4.5,red,LeftTicks(new real[]{0,2,4}));
//labelx("$x$",2.4,S,red);

dotfactor=10;

draw((0,0)--(2-2.5dx,0),purple+linewidth(1));
draw((0,0)--(0,4),heavygreen+linewidth(1));

dot((0,4),heavygreen);
dot((2,0),purple,NoFill);
dot((0,f(0)),blue);
dot((2,f(2)),blue,NoFill);


