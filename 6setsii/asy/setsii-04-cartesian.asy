settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(140);

pair a=(1,3);
pair b=(1,3);
pair c=(2,4);
pair d=(2,4);

path ab=(a.x,b.x)--(a.y,b.x)--(a.y,d.x)--(c.x,d.x)--(c.x,b.y)--(a.x,b.y)--cycle;
path cd=(c.x,d.x)--(c.y,d.x)--(c.y,d.y)--(c.x,d.y)--cycle;
path out=(a.x,b.x)--(c.y,a.x)--(c.y,d.y)--(a.x,d.y)--cycle;
path in=(c.x,d.x)--(a.y,d.x)--(a.y,b.y)--(c.x,b.y)--cycle;

fill(ab,red+green);
filldraw(cd,blue+orange);
draw(ab);
draw(out,dashed);
draw(out,dashed);
fill(in,red+green+blue+orange);
fill(in,cyan+magenta);

label("$A\times B$",(2,1.5));
label("$C\times D$",(3,3.5));

real sh=0.1;
real h=0.025;

draw("$A$",(a.x,-sh)--(a.x,-h)--(a.y,-h)--(a.y,-sh),red+linewidth(1.5));
draw("$C$",(c.x,sh)--(c.x,h)--(c.y,h)--(c.y,sh),N,blue+linewidth(1.5));

draw("$B$",(-sh,b.x)--(-h,b.x)--(-h,b.y)--(-sh,b.y),W,heavygreen+linewidth(1.5));
draw("$D$",(sh,d.x)--(h,d.x)--(h,d.y)--(sh,d.y),orange+linewidth(1.5));


xaxis(0,1.1c.y);
yaxis(0,1.1d.y);

