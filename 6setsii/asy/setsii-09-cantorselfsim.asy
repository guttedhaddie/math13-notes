//if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";


texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(170);

real h=0.03;
real sh=0.06;

transform ta=xscale(1/3);
transform tb=shift(2/3,0)*xscale(1/3);
//transform tc=shift(0,-2h);
transform tc=shift(0,0);

picture pic;
path p=(0,0)--(1,0)--(1,h)--(0,h)--cycle;
fill(pic,p);


picture picr;
path p=(0,0)--(1,0)--(1,h)--(0,h)--cycle;
fill(picr,p,red);


picture picb;
path p=(0,0)--(1,0)--(1,h)--(0,h)--cycle;
fill(picb,p,blue);

void Cantor(picture picc){
  picture piccc;
  add(piccc,tc*ta*picc);
  add(piccc,tc*tb*picc);
  pic=piccc;
	}
	
void CantorR(picture picc){
  picture piccc;
  add(piccc,tc*ta*picc);
  add(piccc,tc*tb*picc);
  picr=piccc;
	}
	
void CantorB(picture picc){
  picture piccc;
  add(piccc,tc*ta*picc);
  add(piccc,tc*tb*picc);
  picb=piccc;
	}

void Cantlab(int n){
	label("$C_{" + (string) n +"}$",(0,-2h*0),W);
	}


for(int m=1; m<=8; ++m){
	Cantor(pic);
}
add(pic);

for(int m=1; m<=7; ++m){
	CantorR(picr);
}

add(shift((0,-sh))*xscale(1/3)*picr);

for(int m=1; m<=7; ++m){
	CantorB(picb);
}

add(shift((2/3,-sh))*xscale(1/3)*picb);

draw("$\mathcal C$",brace((0,1.5h),(1,1.5h),0.03),N,linewidth(0.2));

draw(Label("$f(\mathcal C)$",red),brace((0,-sh-0.5h),(1/3,-sh-0.5h),-0.03),S,linewidth(0.2));
draw(Label("$g(\mathcal C)$",blue),brace((2/3,-sh-0.5h),(1,-sh-0.5h),-0.03),S,linewidth(0.2));
