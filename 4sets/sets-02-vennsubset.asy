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

size(130,130);

draw(circle((0,0),1));
draw(yscale(0.7)*circle((0.4,0),1.8));
draw(yscale(0.7)*circle((-1.5,0),1));

label("$A$",(0,-0.0));
label("$B$",(1.6,0.0));
label("$C$",(-2,0.0));