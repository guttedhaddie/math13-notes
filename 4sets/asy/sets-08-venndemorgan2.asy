settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(0,95);

pen colour0=0.6lightblue+0.4white;
pen colour1=0.6red+0.4white;

real X=1.5;
real Y=1;


path c=box((-X,-Y),(X,Y));

fill(c,colour0);

int N=20;
for(int n=-N; n<=N; ++n){
	draw((-2,2+3*(n+0.5)/N)--(2,-2+3*(n+0.5)/N),colour1+linewidth(2.8));
}
clip(c);

real sh=0.5;

path c0=shift(sh,0)*scale(0.7)*unitcircle;
path c1=shift(-sh,0)*scale(0.7)*unitcircle;

fill(c0,colour0);
fill(c1,colour1);

picture intersection01;
fill(intersection01,c0,magenta+white);
clip(intersection01,c1);
add(intersection01);

label("$A$",(-sh,0));
label("$B$",(sh,0));
draw(c);
draw(c0);
draw(c1);
