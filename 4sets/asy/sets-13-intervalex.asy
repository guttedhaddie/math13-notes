settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
%\input{../../preamble}
");
import graph;

size(350,130,IgnoreAspect);

real sh=1;
real shi=-0.8;
real dx=0.03;
pen a=red;
pair U=(-4,5);
pair A=(-3,2);
pair B=(-4,1);
pair AC1=(-4,-3);
pair AC2=(2,5);
pair BC=(1,5);
pair BA=(-4,-3);
pair AB=(1,2);
pen b=blue;
pen ba=heavygreen;
pen ab=orange;

xaxis(U.x,U.y,RightTicks(new real[]{-4,-3,-2,-1,0,1,2,3,4,5}));
label("$\mathcal U$",(U.x,0),2W);
label("$[$",(U.x,0));
label("$]$",(U.y,0));

draw((A.x,2sh)--(A.y,2sh),a);
label("$A$",(U.x,2sh),2W);
label("$[$",(A.x,2sh),a);
label("$]$",(A.y,2sh),a);

draw((B.x,sh)--(B.y,sh),b);
label("$B$",(U.x,sh),2W);
label("$[$",(B.x,sh),b);
label("$)$",(B.y-dx,sh),b);

draw((AC1.x,shi-sh)--(AC1.y,shi-sh),a);
draw((AC2.x,shi-sh)--(AC2.y,shi-sh),a);
label("$A^{\mathsf{C}}$",(U.x,shi-sh),2W);
label("$[$",(AC1.x,shi-sh),a);
label("$)$",(AC1.y-dx,shi-sh),a);
label("$($",(AC2.x,shi-sh),a);
label("$]$",(AC2.y,shi-sh),a);

draw((BC.x,shi-2sh)--(BC.y,shi-2sh),b);
label("$B^{\mathsf{C}}$",(U.x,shi-2sh),2W);
label("$[$",(BC.x,shi-2sh),b);
label("$]$",(BC.y,shi-2sh),b);

draw((BA.x,shi-3sh)--(BA.y,shi-3sh),ba);
label("$B\setminus A$",(U.x,shi-3sh),2W);
label("$[$",(BA.x,shi-3sh),ba);
label("$)$",(BA.y-dx,shi-3sh),ba);

draw((AB.x,shi-4sh)--(AB.y,shi-4sh),ab);
label("$A\setminus B$",(U.x,shi-4sh),2W);
label("$[$",(AB.x,shi-4sh),ab);
label("$]$",(AB.y,shi-4sh),ab);