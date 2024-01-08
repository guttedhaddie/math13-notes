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

size(220);

int m=6;
int n=7;

real ad=0.3;
real sh=0.35;

for(int i=1; i<=m; ++i){
		for(int j=1; j<=n; ++j){
			label("\Large$\frac{" + string(j) + "}{" + string(i) + "}$",(j,-i));
			if(i==1){label("$\vdots$",(j,-m-1+ad));}
//			if(i!=1&j!=n&(i+j)%2==1){draw((j+1-sh,1-i-sh)--(j+sh,-i+sh),Arrow);}
//			if(i!=1&j!=n&(i+j)%2==0){draw((j+sh,-i+sh)--(j+1-sh,1-i-sh),Arrow);}
			if(j==1&(i+j)%2==0){draw((1-sh,-1-i-sh){dir(SW)}..(1-sh,-2-i-sh){dir(NE)},white,ArcArrow);}
			if(i==1&j<=n&(i+j)%2==0){draw((j+sh,sh-1){dir(NE)}..(j+1+sh,sh-1){dir(SW)},white,ArcArrow);}
			}
		label("$\cdots$",(n+1-ad,-i));
		}

//for(int i=1; i<=m; ++i){
//		for(int j=1; j<=n; ++j){
//			label("\Large$\frac{" + string(j) + "}{" + string(i) + "}$",(j,-i));
//			if(i==1){label("$\vdots$",(j,-m-1+ad));}
//			}
//		label("$\cdots$",(n+1-ad,-i));
//		}

label("$\ddots$",(n+1-ad,-m-1+ad));
