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
");
include graph;

import graph3;
import palette;

defaultrender.merge=true;

size3(120,60,150,IgnoreAspect);
currentprojection=orthographic(-8,7,3);
//currentprojection=FrontView;

real x(real u, real v) {
	return -(2/15)*(cos(u))*(3cos(v)-30sin(u)+90(cos(u))^4*sin(u)-60(cos(u))^6*sin(u)+5cos(u)*cos(v)*sin(u));
	}
	
real z(real u, real v) {
	return (1/15)*sin(u)*(3cos(v)-3(cos(u))^2*cos(v)-48(cos(u))^4*cos(v)+48(cos(u))^6*cos(v) -60sin(u)+5cos(u)*cos(v)*sin(u) -5(cos(u))^3*cos(v)*sin(u) -80(cos(u))^5*cos(v)*sin(u) +80(cos(u))^7*cos(v)*sin(u));
	}
	
real y(real u, real v) {
	return (2/15)*(3+5cos(u)*sin(u))*sin(v);
	}
	
triple f(pair t){return (x(t.x,t.y),y(t.x,t.y),z(t.x,t.y));}

surface s=surface(f,(0,0),(pi,2pi),50,Spline);
pen rend=heavygreen+opacity(0.5);
draw(surface(s),rend);

triple B(real t){return f((t,(2/pi^2)*(t+pi/2)*(pi-t)^2));}
draw(graph(B,0,pi),blue);
triple R(real t){return f((pi/2-0.07sin(t),t));}
draw(graph(R,0,2pi),red);
