if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
%\input{../../preamble}
");
import graph;

size(180,160,IgnoreAspect);

pair F(real t){return (cos(t),sin(2t)+1);}

draw(graph(F,0,2pi));

real a=1.2;

draw((F(a).x,0)--F(a)--(0,F(a).y),dashed,Arrow);
draw(F(2pi-a)--(0,F(2pi-a).y),dashed,Arrow);

labelx("$a$",F(a).x);
labely("$b_1$",F(a).y);
labely("$b_2$",F(2pi-a).y);

xaxis("$A$");
yaxis("$B$");

