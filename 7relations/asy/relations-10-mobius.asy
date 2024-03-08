settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(0,45);

draw((0,0)--(5,0),heavygreen+linewidth(2));
draw((0,1)--(5,1),heavygreen+linewidth(2));
draw((0,0)--(0,1),red+linewidth(2),Arrow(8,Relative(0.6)));
draw((5,1)--(5,0),red+linewidth(2),Arrow(8,Relative(0.6)));

dotfactor=10;
dot("$P$",(2,0.4),blue);
dot("$Q$",(0,0.2),heavyred);
dot("$\hat Q$",(5,0.8),W,heavyred);


