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

fill(box((1,3),(3,4)),lightblue+opacity(0.5));

draw((1,3)--(1,4));
draw((1,4)--(3,4));
draw((3,4)--(3,3),Dotted);
draw((3,3)--(1,3),Dotted);

pair f(real t){return (2t+1,t^2);}
draw(graph(f,0.5,2));
dot(f(0.5));
dot(f(2));

xaxis("$\mathbb R$",0,5.5,RightTicks(new real[]{0,1,2,3,4,5}));
yaxis("$\mathbb R$",0,5.5,LeftTicks(new real[]{0,1,2,3,4,5}));

