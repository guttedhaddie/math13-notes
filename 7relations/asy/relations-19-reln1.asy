settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(125);

xaxis(0,3.7,red);
yaxis(0,3.5,red,LeftTicks(new real[]{1,2,3}));

labelx("$B$",3.5,red);
labely("$A$",3.5,red);

xtick(Label("$p$",align=S),1,S,red);
xtick(Label("$q$",align=S),2,S,red);
xtick(Label("$r$",align=S),3,S,red);

draw((3,0)--(3,3.2),dashed+magenta);

draw((2,0)--(2,3.2),dashed+brown);

dotfactor=8;

dot((3,1),blue);
dot((1,2),blue);
dot((3,3),blue);
