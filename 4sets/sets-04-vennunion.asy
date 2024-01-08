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

size(0,160);

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
label("$A$",z1+(0,1.15r));
label("$B$",z2+(0,1.15r));


//label("$\overbrace{\phantom{bobandjimandb}}^{\displaystyle A}$",z1+(0,1.1r));
//label("$\overbrace{\phantom{bobandjimandb}}^{\displaystyle B}$",z2+(0,1.1r));

pair z=(0,-2);
real m=3;
margin BigMargin=Margin(0,m*dot(unit(z1-z),unit(z0-z)));

label("\smash[b]{$A\cap B$}",(0,0));
label("$\underbrace{\phantom{bobandjimandbobandjimandbo}}_{\displaystyle A\cup B}$",(0,-1.8));

label("$\mathcal{U}$",2.9z1+(0,1.25r));
label("\phantom{$\mathcal{U}$}",2.9z2+(0,1.25r));

shipout(bbox(0.25cm));
currentpicture.uptodate=true;