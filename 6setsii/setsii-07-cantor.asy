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
import animate;

size(450);

real h=0.01;

transform ta=xscale(1/3);
transform tb=shift(2/3,0)*xscale(1/3);
//transform tc=shift(0,-2h);
transform tc=shift(0,0);

picture pic;
path p=(0,0)--(1,0)--(1,h)--(0,h)--cycle;
fill(pic,p);

void Cantor(picture picc){
  picture piccc;
  add(piccc,tc*ta*picc);
  add(piccc,tc*tb*picc);
  pic=piccc;
	}

void Cantlab(int n){
	label("$C_{" + (string) n +"}$",(0,-2h*0),W);
	}

animation A;

save();
label("$0$",(0,3.5h));
label("$\frac 13$",(1/3,3.5h));
label("$\frac 23$",(2/3,3.5h));
label("$1$",(1,3.5h));
Cantlab(0);
add(pic);
A.add();
restore();

for(int m=1; m<=9; ++m){
save();
label("$0$",(0,3.5h));
label("$\frac 13$",(1/3,3.5h));
label("$\frac 23$",(2/3,3.5h));
label("$1$",(1,3.5h));
Cantlab(m);
Cantor(pic);
add(pic);
A.add();
restore();
}

label(A.pdf("controls",multipage=false),fontsize(5));
