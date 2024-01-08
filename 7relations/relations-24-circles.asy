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

size(180);

int n=10;

dot((0,0));

for(int i=1; i<=10; ++i){
	draw(circle((0,0),i/n));
	draw(circle((0,0),1+i/n),dashed);
	}
	
draw(circle((0,0),1),blue);
	
clip(box((-1.1,-1.1),(1.1,1.1)));
	
xaxis("$v$",-1.1,1.2,red,RightTicks(new real[]{-1,1}));
yaxis("$w$",-1.1,1.2,red,LeftTicks(new real[]{-1,1}));