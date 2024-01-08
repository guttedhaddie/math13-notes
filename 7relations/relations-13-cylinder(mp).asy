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

size(0,0,IgnoreAspect);

u:=1.3cm;
picture x,y;
path p,q,r,s;
q=(1,-2) for i=0 upto 90:..(cosd(2*i),-2-.3*sind(2*i)) endfor --(-1,4) for i=0 upto 90:..(-cosd(2*i),4-.3*sind(2*i)) endfor --cycle;
q:=q scaled .5u;
r=(-1,4) for i=0 upto 90:..(-cosd(2*i),4+.3*sind(2*i)) endfor ;
s=(-1,7)*.5u--(-1+.01,7)*.5u--(-1+.01,-3)*.5u--(-1,-3)*.5u--cycle;
for i=0 step .005 until 2:
   fill s shifted (i/2*u,0) withcolor ((1-.7*i/2)*green+(.3+.7*i/2)*red);
endfor;
clip currentpicture to q;
draw q;
draw r scaled .5u dashed evenly;
pickup pencircle scaled 2pt;
draw (0,u);
x=currentpicture;
currentpicture:=nullpicture;
path a;
a=(0,-1)*u--(.01,-1)*u--(.01,2)*u--(0,2)*u--cycle;
for i=0 step .005 until 2:
   fill a shifted (i/4*u,0) withcolor ((1-.7*i/2)*green+(.3+.7*i/2)*red);
endfor;
for i=2 step .005 until 4:
   fill a shifted (i/4*u,0) withcolor ((-.4+.7*i/2)*green+(1.7-.7*i/2)*red);
endfor;
y=currentpicture;
draw y shifted (u,0);
draw y shifted (-u,0);
pickup pencircle scaled 2pt;
for i=-1 upto 2: draw ((i+.25)*u,u); endfor;
pickup pencircle scaled 1pt;
drawarrow (-1.2u,0)--(2.5u,0);
drawarrow (0,-1.2u)--(0,2.2u);
label.bot(btex $x$ etex, (2.2u,0));
label.lft(btex $y$ etex, (0,2.2u));
draw (u,-1.1u)--(u,2.1u) dashed evenly;
label.llft(btex 0 etex, (0,0));
label.llft(btex 1 etex, (u,0));
draw x shifted (5u,0);
drawarrow (3u,.5u)..(3.5u,.9u)..(4u,u);
label(btex wrap etex,(3.5u,.4u));
label(btex around etex,(3.5u,.1u));