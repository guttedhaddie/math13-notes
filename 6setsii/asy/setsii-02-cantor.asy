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

size(250);

real h=0.01;

transform ta=xscale(1/3);
transform tb=shift(2/3,0)*xscale(1/3);
transform tc=shift(0,-2h);

void Cantor(int n){
	picture pic;
	path p=(0,0)--(1,0)--(1,h)--(0,h)--cycle;
  fill(pic,p);
	for(int i=1; i<=n; ++i){
  add(pic);
  picture picc;
  add(picc,tc*ta*pic);
  add(picc,tc*tb*pic);
  pic=picc;
	}}

Cantor(10);

label("$0$",(0,5h));
label("$\frac 13$",(1/3,5h));
label("$\frac 23$",(2/3,5h));
label("$1$",(1,5h));