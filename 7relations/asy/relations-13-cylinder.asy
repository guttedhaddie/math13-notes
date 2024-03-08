settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import palette;

size(240,140,IgnoreAspect);

picture shad;
picture lll;
picture rrr;


int n=256;
real ninv=2pi/n;
pen[][] v=new pen[n][n];

for(int i=0; i < n; ++i)
  for(int j=0; j < n; ++j)
    v[i][j]=rgb(0.5+0.35sin(i*ninv),0.5+0.35sin(i*ninv+2pi/3),0.5+0.35sin(i*ninv+4pi/3));
    
real b=0.12;
real f(real x){return -b*sqrt(1-(3x)^2);}
real g(real x){return 2+b*sqrt(1-(3x)^2);}

path p=xscale(1)*(shift(0,-1)*graph(f,-1/3,1/3)--shift(0,2)*graph(f,1/3,-1/3)--cycle);

image(rrr,v,(-0.1,-1-b),(-0.1+4/3,2));
add(rrr);
add(shift(-4/3,0)*rrr);

draw((-0.1,-1-b)--(-0.1,2-b/2),dashed);

clip(p);
draw(p);
draw(graph(g,-1/3,1/3),dashed);

dotfactor=8;

dot((0.2,1.05-b),Cyan);

draw(Label("\begin{minipage}{4cm}\centering
wrap\\around
\end{minipage}",align=3dir(273)),(-1.3,0.7)..(-0.9,1.1)..(-0.5,1.3),EndArrow);

image(shad,v,(0,-1),(1,2));

add(lll,shad);
add(lll,shift(1,0)*shad);
add(lll,shift(-1,0)*shad);

draw(lll,(-1.0,0)--(2.2,0),Arrow);
draw(lll,(0,-1.0)--(0,2.3),Arrow);
draw(lll,(1,-1.0)--(1,2.0),dashed);

label(lll,"$x$",(2.15,-0.15));
label(lll,"$y$",(-0.15,2.15));
label(lll,"$0$",(-0.1,-0.15));
label(lll,"$1$",(0.9,-0.15));

for(int i=0; i<3; ++i){
	dot(lll,(i-0.75,1.1),Cyan);
}
	
real r=3.5;

add(shift(-r,0)*lll);

