settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(125);

xaxis(0,3.6,red,RightTicks(new real[]{1,2,3}));
yaxis(0,3.5,red);

labelx("$A$",3.5,red);
labely("$B$",3.5,red);
ytick(Label("$p$",align=W),1,W,red);
ytick(Label("$q$",align=W),2,W,red);
ytick(Label("$r$",align=W),3,W,red);

dotfactor=8;

dot((1,3),blue);
dot((2,1),blue);
dot((3,3),blue);
