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

size(180);

void linep(real n){
			draw(-dir(aTan(n))--dir(aTan(n)));
			label("$A_{" + string(n) + "}$", 1.25*dir(aTan(n)));
			}
			
void linen(real n){
			draw(-dir(aTan(n))--dir(aTan(n)));
			label("$A_{" + string(n) + "}$", -1.25*dir(aTan(n)));
			}

linep(1);
linep(2);
linep(4);
linep(1/2);
linen(-3);
linen(-3/4);
linen(-1/5);
linep(0);

draw(-dir(90)--dir(90));
label("$A_\infty$", 1.25*dir(90));



