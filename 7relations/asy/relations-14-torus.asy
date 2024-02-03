if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
//if(settings.render < 0) settings.render=4;
settings.outformat="";
//settings.inlineimage=true;
settings.embed=true;
settings.prc=false;
settings.toolbar=false;

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
%\input{../../preamble}
");

import graph3;
import three;
import grid3;
import palette;

currentprojection=orthographic(1,1,2.3);

size3(400,400,100,IgnoreAspect);

defaultrender.merge=true;

real r=0.6;
real R=2;

int N=20;

triple P(pair t){return ((R+r*cos(2*pi*t.y))*cos(2*pi*t.x),(R+r*cos(2*pi*t.y))*sin(2*pi*t.x),R*sin(2*pi*t.y));}

real f(pair z) {return sin(2*pi*z.x)*cos(2*pi*z.y);}

surface s=surface(f,(0,0),(1,1),2N,N);

surface T=surface(P,(0,0),(1,1),2N,N,Spline);
T.colors(palette(s.map(zpart),Rainbow()));

draw(T);

real x(real t) {return (R+r*cos(2*pi*t))*cos(2*pi*0);}
real y(real t) {return (R+r*cos(2*pi*t))*sin(2*pi*0);}
real z(real t) {return R*sin(2*pi*t);}
path3 p=graph(x,y,z,0,0.25,operator ..);
draw(p,linewidth(1),Arrow3);

real x(real t) {return (R+r*cos(2*pi*0))*cos(2*pi*t);}
real y(real t) {return (R+r*cos(2*pi*0))*sin(2*pi*t);}
real z(real t) {return R*sin(2*pi*0);}
path3 p=graph(x,y,z,0,0.25,operator ..);
draw(p,linewidth(1),Arrow3);