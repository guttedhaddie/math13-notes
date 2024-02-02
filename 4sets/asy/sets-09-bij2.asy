settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120,125,IgnoreAspect);

real m=-1.8;
real M=1.51;

real f(real x){return 1+1/((2-x)^2);}
draw(graph(f,m,M),blue+linewidth(1));


real x=1.37;
real y=f(x);

xtick(Label("$x$",align=S),x,S,purple);
ytick(Label("$y$",align=2W),y,W,heavygreen);
draw((x,0)--(x,y)--(0,y),dotted+blue,Arrow(Relative(0.8),arrowhead=TeXHead));


xaxis(m,2.2,red,RightTicks(new real[]{-1,0,1,2}));
yaxis(0,red,LeftTicks(new real[]{1,2,3,4,5}));

dotfactor=10;
dot((2,0),purple,NoFill);
dot((0,1),heavygreen,NoFill);

draw((m,0)--(1.93,0),purple+linewidth(1));
draw((0,1.07)--(0,f(M)),heavygreen+linewidth(1));