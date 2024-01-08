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

size(0,120);

pen colour1=blue+opacity(0.7);

pair z0=(0,0);
path c1=circle(z0,1);

path p=box((-1.5,-1.2),(1.5,1.2));

fill(p,colour1);
fill(c1,white);

draw(c1);
draw(p);

label("$A$",z0);
label("$A^{\mathsf{C}}$",(-1.15,0.9));
