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
");
import graph;

size(180,140,IgnoreAspect);

xaxis(Label("$\mathbb R$",align=4dir(-1)),RightTicks(new real[]{-2,-1,1,2}));
yaxis("$\mathbb R$",LeftTicks(new real[]{-8,-4,4,8}));

real f(real x){return x^3;}

draw(graph(f,-2,2));

