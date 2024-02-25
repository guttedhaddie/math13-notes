settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(140);

real sh=0.01;

xaxis(-sh,0.13+sh);

xtick(Label("$x$",align=S),0.13,S);
xtick(Label("$0$",align=S),0,S);
xtick(Label("$\frac 1{10}$",align=S),0.1,S);

draw("$A_5$",(0,0)--(0.1-0.003,0),red+linewidth(2));

dotfactor=10;

dot((0,0),red);
dot((0.1,0),red,NoFill);
