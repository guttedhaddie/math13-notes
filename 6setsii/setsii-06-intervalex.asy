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

size(250);

real sh=0.0005;

draw((-0.01,0)--(0.23,0));
label("$)$",(0.1-sh,0));
label("$[$",(0,0));
label("$|$",(2/9,0));
label("$0$",(0,0),3S);
label("$\frac 1{10}$",(0.1,0),2S);
label("$\frac 29$",(2/9,0),2S);
label("$A_{10}$",(0.05,0),N);
draw((sh,0)--(0.1-sh,0),red+linewidth(2));
