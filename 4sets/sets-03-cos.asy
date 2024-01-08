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

size(300,120,IgnoreAspect);

real f(real x){return cos(x);}

draw(graph(f,0,4pi));

draw((0,-0.5)--(4pi,-0.5),dashed);

xaxis("$x$",0,4.2pi,red);
yaxis("$y$",-1.1,1.2,red,LeftTicks(new real[]{-1,0,1}));

xtick(Label("$\pi$",align=S),pi,S,red);
xtick(Label("$2\pi$",align=S),2pi,S,red);
xtick(Label("$3\pi$",align=S),3pi,S,red);
xtick(Label("$4\pi$",align=S),4pi,S,red);
xtick(Label("$\frac{2\pi}3$",align=N),2*pi/3,N,red);
xtick(Label("$\frac{4\pi}3$",align=N),4*pi/3,N,red);
xtick(Label("$\frac{8\pi}3$",align=N),8*pi/3,N,red);
xtick(Label("$\frac{10\pi}3$",align=N),10*pi/3,N,red);
ytick(Label("$-\frac 12$",align=W),-0.5,S,red);

void fdash(real x){
	draw((x,0)--(x,f(x)),dashed);
	}
	
fdash(2pi/3);
fdash(4pi/3);
fdash(8pi/3);
fdash(10pi/3);