if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=4;
settings.outformat="";
//settings.prc=false;
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
import graph3;
import palette;

size(200);

currentprojection=perspective(5,-6,3);

triple f(pair t) {
  real u=2pi*t.x;
  real v=0.8t.y-0.4;
  real x=cos(u)*(1+0.5*v*cos(u/2));
  real y=sin(u)*(1+0.5*v*cos(u/2));
  real z=0.5*v*sin(u/2);
  return (x,y,z);
}

//surface s=surface(f,(0,0),(1,1),20,5,Spline);
//s.colors(palette(s.map(zpart),opacity(0.5)+Rainbow()));
//draw(s,render(merge=true));

int N=20;

real P(pair t){return 1-t.x-t.y+2*t.x*t.y;}
surface s=surface(f,(0,0),(1,1),8N,N,Spline);
surface T=surface(P,(0,0),(1,1),8N,N,Spline);
s.colors(palette(T.map(zpart),Rainbow()));
draw(s);

//real a=1.99;
//draw(graph(F,0,a*pi),blue+dashed,Arrow3);
//draw(graph(FF,0,4pi)..cycle);


//int n=8;
//for(int i=1; i<n; ++i){
//draw(F(a*pi*i/n)--F(a*pi*i/n)-0.3*n((a*pi*i/n,0)),Arrow3);
//}
//draw("$\mathbf n$",F(0)--F(0)-0.3*n((0,0)),Arrow3);
//draw("?",F(a*pi)--F(a*pi)-0.3*n((a*pi,0)),dashed,Arrow3);
