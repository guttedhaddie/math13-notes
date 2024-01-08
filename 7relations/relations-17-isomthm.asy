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
\def\quotient#1#2{{}^{\textstyle {#1}}\!\big/_{\textstyle \!{#2}}}
");
import graph;

size(0,0);

real sc=60;
pair z0=(0,0);
pair z1=(-sc,sc);
pair z2=(sc,sc);

label("$X$", z1);
label("$A$", z2);
label("$\quotient X{\sim}$", z0);
draw(Label("$F$",align=N),.9z1+0.1z2--.1z1+.9z2,Arrow);
draw(Label("$\gamma$",align=SW),.84z1+0.16z0--.2z1+.8z0,Arrow);
draw(Label("$f$",align=SE),.8z0+0.2z2--.16z0+.84z2,Arrow);
//drawarrow .15[z1,z0]--.85[z1,z0];
//drawarrow .15[z0,z2]--.85[z0,z2];
//label.top(btex $F$ etex, .5[z1,z2]);
//label.llft(btex $\gamma$ etex, .5[z1,z0]);
//label.lrt(btex $f$ etex, .5[z0,z2]);

