settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
%\input{../../preamble}
");
import graph;

size(0,120);

pen colour0=red;
pen colour1=green;
pen colour2=blue;

real r=1;
pair z0=r*dir(210);
pair z1=r*dir(-30);
pair z2=r*dir(90);
real R=1.2;
path c0=circle(z0,R);
path c1=circle(z1,R);
path c2=circle(z2,R);
fill(c0,colour0);
//fill(c1,colour1);
//fill(c2,colour2);

picture intersection01;
fill(intersection01,c0,colour0+colour1);
clip(intersection01,c1);

picture intersection02;
fill(intersection02,c0,colour0+colour2);
clip(intersection02,c2);

picture intersection12;
fill(intersection12,c1,colour1+colour2);
clip(intersection12,c2);

picture intersection012;
fill(intersection012,c0,grey+colour0+colour1+colour2);
clip(intersection012,c1);
clip(intersection012,c2);

add(intersection01);
add(intersection02);
add(intersection12);
add(intersection012);

draw(c0);
draw(c1);
draw(c2);

label("$A$",1.1*z0);
label("$B$",1.1*z1);
label("$C$",1.1*z2);

shipout(bbox(0.25cm));
currentpicture.uptodate=true;