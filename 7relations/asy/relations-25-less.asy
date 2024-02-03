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
");
import graph;

size(180,160,IgnoreAspect);

xaxis("$\mathbb N$",0,6.5,RightTicks(new real[]{1,2,3,4,5,6}));
yaxis("$\mathbb N$",0,6.5,LeftTicks(new real[]{1,2,3,4,5,6}));

int n=6;
for(int j=2; j<=n; ++j){
	for(int i=1; i<j; ++i){
		dot((i,j));
	}
}

