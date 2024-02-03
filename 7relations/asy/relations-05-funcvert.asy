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

pair F(real t){return (t,sqrt(t)+2*sin(t));}

draw(graph(F,0,10));

real a=7;

draw((a,0)--F(a)--(0,F(a).y),dashed,Arrow);

labelx("$a$",a);
labely("$f(a)$",F(a).y);

xaxis("$A$",0,10);
yaxis("$B$",0);

