settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(200,180,IgnoreAspect);

pair R(real t){return (1.5+1.5*cos(t),2*sin(2t)+2.5);}

path RR=graph(R,0,2pi,operator..);

draw(RR,heavygreen+linewidth(1.5));


real a=1.1;

path av=(a,0)--(a,5);

pair[] bb=intersectionpoints(RR,av);

draw(bb[0]--(0,bb[0].y),dashed+magenta,Arrow);
draw((a,0)--bb[1]--(0,bb[1].y),dashed+magenta,Arrow);

dotfactor=10;
dot(bb[0],magenta);
dot(bb[1],magenta);

labelx("$a$",a,magenta);
labely("$b_1$",bb[0].y,magenta);
labely("$b_2$",bb[1].y,magenta);

real atil=3.5;
draw((atil,0)--(atil,5),brown+dashed);
labelx("$\tilde a$",atil,brown);

xaxis(0,4,red,RightTicks(new real[]{0,2,4},new real[]{1,3}));
yaxis(0,5,red,LeftTicks(new real[]{0,2,4},new real[]{1,3,5}));

draw("$\operatorname{dom}(\mathcal R)\neq A$",brace((0,-0.8),(3,-0.8),-0.2),heavygreen);
draw(rotate(90,(-0.4,2.25))*"$\operatorname{range}(\mathcal R)$",brace((-0.4,0.5),(-0.4,4.5),0.2),W,heavygreen);
