settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(160,110,IgnoreAspect);

real sh=0.05;
real v=-1.0;

dotfactor=8;

draw((-1.55,0)--(1.5,0));
label("$\sqrt 2$",(sqrt(2),0),N);
label("$-\sqrt 2$",(-sqrt(2),0),N);
label("$0$",(0,0),2N);
label("$A_1$",(-1.65,0),W);
draw((-sqrt(2)+sh,0)--(-sh,0),red+linewidth(2));
draw((sqrt(2)-sh,0)--(sh,0),red+linewidth(2));
dot((0,0),red,NoFill);
dot((sqrt(2),0),red,NoFill);
dot((-sqrt(2),0),red,NoFill);

draw((-1.55,v)--(1.5,v));
//label("$\sqrt{\frac 32}$",(sqrt(3/2),v),S);
//label("$-\sqrt{\frac 32}$",(-sqrt(3/2),v),S);
//label("$\sqrt{\frac 12}$",(sqrt(1/2),v),S);
//label("$-\sqrt{\frac 12}$",(-sqrt(1/2),v),S);
label("$A_2$",(-1.65,v),W);
draw((-sqrt(3/2)+sh,v)--(-sqrt(1/2)-sh,v),red+linewidth(2));
draw((sqrt(3/2)-sh,v)--(sqrt(1/2)+sh,v),red+linewidth(2));
dot((-sqrt(3/2),v),red,NoFill);
dot((-sqrt(1/2),v),red,NoFill);
dot((sqrt(1/2),v),red,NoFill);
dot((sqrt(3/2),v),red,NoFill);

draw((-1.55,2v)--(1.5,2v));
label("$A_3$",(-1.65,2v),W);
draw((-sqrt(4/3)+sh,2v)--(-sqrt(2/3)-sh,2v),red+linewidth(2));
draw((sqrt(4/3)-sh,2v)--(sqrt(2/3)+sh,2v),red+linewidth(2));
dot((-sqrt(4/3),2v),red,NoFill);
dot((-sqrt(2/3),2v),red,NoFill);
dot((sqrt(2/3),2v),red,NoFill);
dot((sqrt(4/3),2v),red,NoFill);


draw((-1.55,3v)--(1.5,3v));
label("$A_4$",(-1.65,3v),W);
draw((-sqrt(5/4)+sh,3v)--(-sqrt(3/4)-sh,3v),red+linewidth(2));
draw((sqrt(5/4)-sh,3v)--(sqrt(3/4)+sh,3v),red+linewidth(2));
dot((-sqrt(5/4),3v),red,NoFill);
dot((-sqrt(3/4),3v),red,NoFill);
dot((sqrt(3/4),3v),red,NoFill);
dot((sqrt(5/4),3v),red,NoFill);

draw((-1.55,4v)--(1.5,4v));
label("$A_5$",(-1.65,4v),W);
draw((-sqrt(6/5)+sh,4v)--(-sqrt(4/5)-sh,4v),red+linewidth(2));
draw((sqrt(6/5)-sh,4v)--(sqrt(4/5)+sh,4v),red+linewidth(2));
dot((-sqrt(6/5),4v),red,NoFill);
dot((-sqrt(4/5),4v),red,NoFill);
dot((sqrt(4/5),4v),red,NoFill);
dot((sqrt(6/5),4v),red,NoFill);

