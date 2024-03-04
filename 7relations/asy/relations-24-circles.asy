settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(135);

int n=10;

dot((0,0));

for(int i=1; i<=10; ++i){
	draw(circle((0,0),i/n));
	draw(circle((0,0),1+i/n),dashed);
	}
	
draw(circle((0,0),1),blue+linewidth(1.5));
	
clip(box((-1.1,-1.1),(1.1,1.1)));
	
xaxis("$v$",-1.1,1.2,red,RightTicks(new real[]{-1,1}));
yaxis("$w$",-1.1,1.2,red,LeftTicks(new real[]{-1,1}));