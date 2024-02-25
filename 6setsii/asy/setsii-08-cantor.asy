settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import animate;

size(450);

real h=0.05;

transform ta=xscale(1/3);
transform tb=shift(2/3,0)*xscale(1/3);
//transform tc=shift(0,-2h);
transform tc=shift(0,0);

int N=20;
real a=9^(1/N);
real b=(1-a)/4;

transform sc=shift(b,0)*xscale(a);

picture pic;
path p=(0,0)--(1,0)--(1,h)--(0,h)--cycle;
fill(pic,p);

void Cantor(picture picc){
  picture piccc;
  add(piccc,tc*ta*picc);
  add(piccc,tc*tb*picc);
  pic=piccc;
	}

for(int m=1; m<=9; ++m){
	Cantor(pic);
	}

animation A;

save();
add(pic);
clip(p);
A.add();
restore();

for(int m=1; m<=N; ++m){
save();
picture Piccc;
add(Piccc,sc*pic);
pic=Piccc;
add(pic);
clip(p);
A.add();
restore();
}


// Merge the images into a gif animation.
//A.movie(BBox(0.25cm),loops=10,delay=250);

// Merge the images into a pdf animation.
//label(A.pdf(BBox(0.25cm),delay=250,"controls",multipage=false));
label(A.pdf(multipage=true));
