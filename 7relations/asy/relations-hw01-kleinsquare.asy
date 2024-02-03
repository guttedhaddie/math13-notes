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


size(100,IgnoreAspect);

draw((0,0)--(1,0),red,MidArrow);
draw((1,1)--(0,1),red,MidArrow);
draw((0,0)--(0,1),blue,MidArrow);
draw((1,0)--(1,1),blue,MidArrow);

draw((0,1/2)--(1,1/2),dashed);
draw((1/2,0)--(1/2,1),dashdotted);
