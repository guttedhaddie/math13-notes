settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(120,0);

pen colour1=lightblue+white;

pair z0=(0,0);
path c1=circle(z0,1);

path p=box((-1.8,-1.2),(1.8,1.2));

fill(p,colour1);
fill(c1,white);

draw(c1);
draw(p);

label("$A$",z0);
label("$A^{\mathsf{C}}$",(-1.3,0.9));
