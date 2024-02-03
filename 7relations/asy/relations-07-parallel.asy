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

size(180);

draw(Label("$\ell_1$",W),(0,0)--(3,0));
draw(Label("$\ell_3$",W),(0,1)--(3,1));
draw("$\ell_2$",(0,1.3)--(3,-0.3),dir(180+aTan(1.6/3)));