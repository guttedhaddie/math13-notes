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

xaxis("$\mathbb N$",0,5.5,RightTicks(new real[]{1,2,3,4,5}));
yaxis("$\mathbb N$",0,5.5,LeftTicks(new real[]{1,2,3,4,5}));

dot((3,2));
dot((2,2));
dot((2,3));
