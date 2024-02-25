settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(160);

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
//linep(1/2);
linen(-3);
//linen(-3/4);
//linen(-1/5);
linep(0);

draw(-dir(90)--dir(90));
label("$A_\infty$", 1.25*dir(90));

draw(-dir(aTan(0.5))--dir(aTan(0.5)));
label("$A_{\frac 12}$", 1.25*dir(aTan(0.5)));

draw(-dir(aTan(-0.75))--dir(aTan(-0.75)));
label("$A_{-\frac 34}$", -1.25*dir(aTan(-0.75)));
			
draw(-dir(aTan(-0.2))--dir(aTan(-0.2)));
label("$A_{-\frac 15}$", -1.25*dir(aTan(-0.2)));


