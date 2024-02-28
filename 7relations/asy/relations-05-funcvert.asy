settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(200,180,IgnoreAspect);

real k=(13/15)*pi;
real a=4/(sin(3*k)-3*k*cos(3*k));
real b=-a*k*cos(3*k); 

real f(real x){return a*sin(k*x)+b*x+1;}

path ff=graph(f,0,4);
draw(ff,blue+linewidth(1.5));

real a=2.35;

path av=(a,0)--(a,5);
pair P=intersectionpoint(av,ff);
draw((a,0)--P--(0,P.y),dashed+Cyan,Arrow);

dotfactor=10;
dot(P,Cyan);

labelx("$a$",a,Cyan);
labely("$b$",P.y,Cyan);

xaxis(0,4,red,RightTicks(new real[]{0,2,4},new real[]{1,3}));
yaxis(0,5,red,LeftTicks(new real[]{0,2,4},new real[]{1,3,5}));

draw("$\operatorname{dom}(f)=A$",brace((0,-0.8),(4,-0.8),-0.2),blue);
draw(rotate(90,(-0.4,3))*"$\operatorname{range}(f)$",brace((-0.4,1),(-0.4,5),0.2),W,blue);

