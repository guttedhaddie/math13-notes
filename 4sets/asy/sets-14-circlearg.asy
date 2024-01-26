settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
%\input{../../preamble}
");
import graph;

size(55);

pair B=dir(-30);
pair A=dir(90);
pair C=dir(210);

label("\phantom{B}",1.09A);
label("\textcircled{\scriptsize 1}",A);
label("\textcircled{\scriptsize 2}",B);
label("\textcircled{\scriptsize 3}",C);

real sh=0.1;

//draw(A+sh*(B-A)--B+sh*(A-B),Arrow);

label(rotate(-60)*"\smash[b]{$\implies$}",0.5*(B+A));
label(rotate(180)*"\smash[b]{$\implies$}",0.42*(B+C));
label(rotate(60)*"\smash[b]{$\implies$}",0.5*(C+A));