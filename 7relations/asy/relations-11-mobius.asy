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

size(0,0);

pair z0=(30,7);
pair z1=(-30,7);
draw(z1{right}..{right}-z1,heavygreen);
draw((z1-z0)/2--z1,heavyred,Arrow(3));
draw(-z0--(z1-z0)/2,heavyred,Arrow(3));
draw((-z1)--(z0-z1)/2,heavyred,Arrow(3));
draw((z0-z1)/2--z0,heavyred,Arrow(3));

real f=0.03;
path g=z0{left}..{left}-z0;
path g1=subpath(g,0,reltime(g,0.5-f));
draw(g1,heavygreen);
path g2=subpath(g,reltime(g,0.5+f),1);
draw(g2,heavygreen);