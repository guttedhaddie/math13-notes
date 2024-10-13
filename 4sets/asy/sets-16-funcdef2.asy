settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(170,105,IgnoreAspect);

path ellipse(real x, real y){return xscale(x)*yscale(y)*unitcircle;}

path partpath(pair a, pair b){return 0.95*a+0.05*b--0.05a+0.95b;}

pair a1=(0,1.5);
pair a2=(-0.1,0.3);
pair a3=(0,-0.8);
pair a4=(0.3,-1.6);
pair r=(8,0);
pair b1=(0,2)+r;
pair b2=(0.45,1)+r;
pair b3=(-0.8,0.1)+r;
pair b4=(0.4,-1.5)+r;

draw(ellipse(1.5,2.5));

path p=shift(r)*ellipse(1.5,2.5);
draw(p);

path q=shift(r+(0,4))*scale(5)*unitcircle;
//draw(q);

path P=buildcycle(q,p);
draw(P);


//label("$f$",r/2+(0,-1));

real sh=0.08;

draw(partpath(a1,b1),Arrow(Relative(0.5)));
draw(partpath(a2,b2),Arrow(Relative(0.5)));
draw(partpath(a3,b3),Arrow(Relative(0.5)));
draw("$f$",partpath(a4,b3),Arrow(Relative(0.5)));

dot("$a_1$",a1,SW);
dot("$b_1$",b1,S);
dot("$a_2$",a2,SW);
dot("$b_2$",b2,S);
dot("$a_3$",a3,SW);
dot("$b_3$",b3,dir(-55));
dot("$b_4$",b4,SW);
dot("$a_4$",a4,SW);

label("$A$",(0,-3));
label("$B$",r+(0,-3));

draw("$f(A)$",shift(r)*brace((1.8,-0.8),(1.8,2.5),-0.5));

draw((0,2.5)--r+(0,2.5),dashed);
draw((0.15,-2.48)--r+(0.5,-0.98),dashed);