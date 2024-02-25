settings.tex="pdflatex";

//OpenGL (default) - no opacity

//PNG - no opacity
//if(!settings.multipleView) settings.batchView=false;
//settings.render=4;settings.outformat="png";

//HTML - opacity fine
settings.outformat="html";

//PDF
if(!settings.multipleView) settings.batchView=false;
settings.render=4;settings.outformat="pdf";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
include graph;
import graph3;
import palette;

defaultrender.merge=true;
size(180,0,IgnoreAspect);
currentprojection=orthographic(2,-1.5,2);

pair m=(-2,-2);
pair M=(2,2);

real i=1;
triple f(pair t) {
return (t.x,t.y,(1-t.x-i*(t.y))/(i^2));
}
surface s=surface(f,m,M,50,50,Spline);
pen rend=blue+opacity(0.5);
draw(surface(s),rend);

label("$A_1$",f(m),(-1,-1,0),blue);

real i=2;
triple f(pair t) {
return (t.x,t.y,(1-t.x-i*(t.y))/(i^2));
}
surface s=surface(f,m,M,50,50,Spline);
pen rend=green+opacity(0.5);
draw(surface(s),rend);


label("$A_2$",f(m),(-1,-1,0),green);

real i=3;
triple f(pair t) {
return (t.x,t.y,(1-t.x-i*(t.y))/(i^2));
}
surface s=surface(f,m,M,50,50,Spline);
pen rend=red+opacity(0.5);
draw(surface(s),rend);


label("$A_3$",f(m),(-1,-1,0),red);

xaxis3("$x$");
yaxis3("$y$");
zaxis3("$z$");
// surface only
//draw(s);

pen p=rgb(0.2,0.5,0.7);
// mesh only
//draw(s,nullpen,meshpen=p);

// surface & mesh
//draw(s,lightgray,meshpen=p,render(merge=true));
