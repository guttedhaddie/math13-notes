settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(0,120);

pen colour1=red;
pen colour2=green;

real t=0.85;
pair z0=(0,0);
pair z1=(-t,0);
pair z2=(t,0);
real r=1.9*t;
path c1=circle(z1,r);
path c2=circle(z2,r);
//fill(c1,colour1);
fill(c2,colour2);

picture intersection;
fill(intersection,c1,white);
clip(intersection,c2);

add(intersection);

draw(c1);
draw(c2);

//label("$A$",1.4*z1);
label("$B\setminus A$",1.8*z2);

label("$A$",z1+(0,1.15r));
label("$B$",z2+(0,1.15r));

pair z=(0,-2);
real m=3;
//margin BigMargin=Margin(0,m*dot(unit(z1-z),unit(z0-z)));

//label("$\mathcal{U}$",2.8z1+(0,1.25r));
//label("\phantom{$\mathcal{U}$}",2.8z2+(0,1.25r));

//shipout(bbox(0.25cm));
//currentpicture.uptodate=true;