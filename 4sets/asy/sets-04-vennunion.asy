settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(0,110);

pen colour1=red;
pen colour2=green;

real t=0.85;
pair z0=(0,0);
pair z1=(-t,0);
pair z2=(t,0);
real r=1.9*t;
path c1=circle(z1,r);
path c2=circle(z2,r);
fill(c1,colour1);
fill(c2,colour2);

picture intersection;
fill(intersection,c1,colour1+colour2);
clip(intersection,c2);

add(intersection);

draw(c1);
draw(c2);

label("\smash[b]{$A\setminus B$}",1.9*z1+(0,0.011r));
label("\smash[b]{$B\setminus A$}",1.9*z2+(0,0.011r));
label("$A$",z1+(0,1.2r));
label("$B$",z2+(0,1.2r));

draw("$A\cup B$",brace((-2.4,-1.5),(2.4,-1.5),-0.35),S);

label("\smash[b]{$A\cap B$}",(0,0));


path p=box((-3.2,-2.5),(3.2,2.3));
//draw(p);