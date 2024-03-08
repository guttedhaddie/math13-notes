settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(0,50);

pair z0=(40,10);
pair z1=(-40,10);
draw(z1{right}..{right}-z1,heavygreen+linewidth(1.5));
//draw(-z0--(z1-z0)/2,heavyred,Arrow(3));

real f=0.03;
path g=z0{left}..{left}-z0;
path g1=subpath(g,0,reltime(g,0.5-f));
draw(g1,heavygreen+linewidth(1.5));
path g2=subpath(g,reltime(g,0.5+f),1);
draw(g2,heavygreen+linewidth(1.5));

real eb=1;
real ea=3;

path e1=ellipse(z0+(0,2eb),2ea,2eb);
path e11=subpath(e1,reltime(e1,0.75),reltime(e1,1));
draw(e11,heavygreen+linewidth(1.5));
path e2=ellipse((0,z0.y+2eb),2ea+z0.x,6eb);
path e22=subpath(e2,reltime(e2,0),reltime(e2,0.5));
draw(e22,heavygreen+linewidth(1.5));
path e3=ellipse(z1+(0,2eb),2ea,2eb);
path e33=subpath(e3,reltime(e3,0.5),reltime(e3,0.75));
draw(e33,heavygreen+linewidth(1.5));

draw(shift((0,-2z0.y))*e11,heavygreen+linewidth(1.5));
draw(shift((0,-2z0.y))*e22,heavygreen+linewidth(1.5)+dashed);
draw(shift((0,-2z0.y))*e33,heavygreen+linewidth(1.5));

draw(-z0--z1,red+linewidth(1.5),Arrow(5,Relative(0.6)));