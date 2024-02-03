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
//pickup pencircle scaled 2pt;
draw(z0--z1,heavygreen);
draw(-z0--(-z1),heavygreen);
draw((z1-z0)/2--z1,heavyred,Arrow(3));
draw(-z0--(z1-z0)/2,heavyred,Arrow(3));
draw((z0-z1)/2--(-z1),heavyred,Arrow(3));
draw(z0--(z0-z1)/2,heavyred,Arrow(3));