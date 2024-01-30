settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(0,110);

pen colour0=cyan;
pen colour1=magenta;

real r=1;
pair z0=r*dir(210);
pair z1=r*dir(-30);
real R=1.2;
path c0=circle(z0,R);
path c1=circle(z1,R);

path p=box(z0+1.7R*dir(225),z1+1.7R*dir(45));

filldraw(p,yellow);

fill(c0,colour0);
fill(c1,colour1);

picture intersection01;
fill(intersection01,c0,white);
clip(intersection01,c1);



add(intersection01);

draw(c0);
draw(c1);

label("$A$",1.1*z0);
label("$B$",1.1*z1);