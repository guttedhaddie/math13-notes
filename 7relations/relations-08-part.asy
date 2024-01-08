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

size(350,120);

draw(circle((0,0),1));

int n=5;

for(int i=1; i<=n; ++i){
	draw(0.17*dir((i-1)*360/n)--dir((i-1)*360/n),dashed);
	//label("$A_{" + string(i) + "}$",sqrt(1/2)*dir((i-1)*360/n+180/n));
	label("$X$",(0,0));
	}
	
pair a=0.3dir(45);
dot("$a$",a,SE);
dot("$a$",shift((3.5,0)+0.1*dir((1-1)*360/n+180/n))*a,SE);

pair b=0.7dir(90);
dot("$b$",b,N);
dot("$b$",shift((3.5,0)+0.1*dir((2-1)*360/n+180/n))*b,N);

pair c=0.9dir(135);
dot("$c$",c,NE);
dot("$c$",shift((3.5,0)+0.1*dir((2-1)*360/n+180/n))*c,NE);

draw("\small partition",(1.1,0.1)..(1.7,0.15)..(2.3,0.1),Arrow);

path p=(0,0)--arc((0,0),1,0,360/n)--cycle;

for(int i=1; i<=n; ++i){
	draw(shift((3.5,0)+0.1*dir((i-1)*360/n+180/n))*rotate((i-1)*360/n,(0,0))*p);
	label("$A_{" + string(i) + "}$",(3.5,0)+sqrt(1/2)*dir((i-1)*360/n+180/n));
	}