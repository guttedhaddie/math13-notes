settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
%\input{../../preamble}
");
import graph;

size(180);

int m=7;
int n=7;

real ad=0.3;
real sh=0.35;

for(int i=1; i<=m; ++i){
		for(int j=1; j<=n; ++j){
			label("$\frac{" + string(j) + "}{" + string(i) + "}$",(j,-i));
			if(i==1){label("$\vdots$",(j,-m-1+ad));}
			if(i!=1&j!=n&(i+j)%2==1){draw((j+1-sh,1-i-sh)--(j+sh,-i+sh),Arrow);}
			if(i!=1&j!=n&(i+j)%2==0){draw((j+sh,-i+sh)--(j+1-sh,1-i-sh),Arrow);}
			if(j==1&(i+j)%2==0){draw((1-sh,-1-i-sh){dir(SW)}..(1-sh,-2-i-sh){dir(NE)},ArcArrow);}
			if(i==1&j<=n&(i+j)%2==0){draw((j+sh,sh-1){dir(NE)}..(j+1+sh,sh-1){dir(SW)},ArcArrow);}
			}
		label("$\cdots$",(n+1-ad,-i));
		}

label("$\ddots$",(n+1-ad,-m-1+ad));

pair list[]={(2,2)};

label("\LARGE$\times$",(2,-2));

pair array[]={(2,2),(3,3),(4,4),(5,5),(6,6),(2,4),(4,2),(2,6),(6,2),(6,3),(3,6),(6,4),(4,6)};

for(pair k : array) {
label("\LARGE$\times$",(k.x,-k.y),red);
}