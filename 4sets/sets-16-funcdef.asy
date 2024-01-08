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

size(320);

path ellipse(real x, real y){return xscale(x)*yscale(y)*unitcircle;}

pair a1=(0,1);
pair a2=(-0.2,0);
pair a3=(-0.2,-1);
pair a4=(0.2,-1.6);
pair r=(8,0);
pair b1=(0,2);
pair b2=(0.45,1);
pair b3=(-1,0.1);

draw(ellipse(1,2.5));

path p=shift(r)*ellipse(1.5,2.5);
draw(p);

path q=shift(r+(0,2))*scale(3)*unitcircle;
//draw(q);

path P=buildcycle(q,p);
draw(P);


label("$f$",r/2+(0,-1));

real sh=0.08;

draw(subpath(a1..((a1+r+b1)/2+(0,8sh))..r+b1,sh,2-sh),Arrow);
draw(subpath(a2..((a2+r+b2)/2+(0,8sh))..r+b2,sh,2-sh),Arrow);
draw(subpath(a3..((a3+r+b3)/2+(0,10sh))..r+b3,sh,2-sh),Arrow);
draw(subpath(a4..((a4+r+b3)/2+(0,3sh))..r+b3,sh,2-sh),Arrow);

dot("$a_1$",a1,SW);
dot("$f(a_1)$",r+b1,S);
dot("$a_2$",a2,SW);
dot("$f(a_2)$",r+b2,S);
dot("$a_3$",a3,SW);
dot("$f(a_3)=f(a_4)$",r+b3,2dir(-55));
dot("$a_4$",a4,SW);

label("$A$",(0,-2.8));
label("$B$",r+(0,-2.8));

label("$\left.\rule{0cm}{47pt}\right\}f(A)$",r+(1.3,0.88),E);

draw((0,2.5)--r+(0,2.5),dashed);
draw((0.15,-2.48)--r+(0.5,-0.96),dashed);