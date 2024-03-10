settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(180);

real g(real x){return tan(x);}

pair G(real t){return (tan(t),0.5+(1/pi)*t);}

real h=0.35;

draw(graph(G,-pi/2+h,pi/2-h),blue+linewidth(1));

xaxis(red,RightTicks(new real[]{-2,-1,0,1,2}));
yaxis(0,1.1,red,LeftTicks(new real[]{-1,1}));

//labelx("$x$",2.6,S,red);
//labely("$g(x)$",1.4,W,red);
