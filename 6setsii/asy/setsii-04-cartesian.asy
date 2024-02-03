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

size(120);

pair a=(1,3);
pair b=(1,3);
pair c=(2,4);
pair d=(2,4);

path ab=(a.x,b.x)--(a.y,b.x)--(a.y,b.y)--(a.x,b.y)--cycle;
path cd=(c.x,d.x)--(c.y,d.x)--(c.y,d.y)--(c.x,d.y)--cycle;
path out=(a.x,b.x)--(c.y,a.x)--(c.y,d.y)--(a.x,d.y)--cycle;

filldraw(ab,yellow);
filldraw(cd,yellow);
draw(ab);
draw(out,dashed);

real sh=0.1;
real h=0.007;

draw("$A$",(a.x,-sh)--(a.x,-h)--(a.y,-h)--(a.y,-sh),red);
draw("$C$",(c.x,sh)--(c.x,h)--(c.y,h)--(c.y,sh),N,blue);

draw("$B$",(-sh,b.x)--(-h,b.x)--(-h,b.y)--(-sh,b.y),W,heavygreen);
draw("$D$",(sh,d.x)--(h,d.x)--(h,d.y)--(sh,d.y),brown);


xaxis(0,1.1c.y);
yaxis(0,1.1d.y);

