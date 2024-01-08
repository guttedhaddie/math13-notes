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

xaxis(Label("$A$",align=dir(-1)),0,3.5,RightTicks(new real[]{1,2,3}));
yaxis("$B$",0,3.5,LeftTicks(new real[]{1,2,3}));

dot((1,3));
dot((2,1));
dot((3,3));
