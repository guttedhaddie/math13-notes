settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(180,80,IgnoreAspect);

pair F(real x){return (x,cos(x));}

draw(graph(F,0,4pi));

draw((0,0.5)--(4pi,0.5),dashed);

xaxis(0,4.2pi,red);
yaxis(-1.1,1.2,red,LeftTicks(new real[]{-1,0,1}));

xtick(Label("$\pi$",align=S),pi,S,red);
xtick(Label("$2\pi$",align=S),2pi,S,red);
xtick(Label("$3\pi$",align=S),3pi,S,red);
xtick(Label("$4\pi$",align=S),4pi,S,red);
ytick(Label("$\frac 12$",align=W),0.5,W,red);
xtick(pi/3,N,purple);
xtick(5pi/3,N,purple);
xtick(7pi/3,N,purple);
xtick(11pi/3,N,purple);
dot(F(pi/3),purple);
dot(F(5pi/3),purple);
dot(F(7pi/3),purple);
dot(F(11pi/3),purple);

