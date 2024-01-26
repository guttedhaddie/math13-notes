settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

//size(200);

label("$\begin{array}{rc@{\ }c@{\ }c@{\ }c@{\ }c@{\ }l}
A=&\makebox[0cm][r]{$\{$}a_1,&a_2,&a_3,&\cdots,&a_m\makebox[0cm][l]{$\}$}&\\
&\!\!\rotatebox{90}{$\mapsto$}&\!\!\rotatebox{90}{$\mapsto$}&\!\!\rotatebox{90}{$\mapsto$}&&\!\!\rotatebox{90}{$\mapsto$}&\\[-8pt]
B=&\makebox[0cm][r]{$\{$}b_1,&b_2,&b_3,&\cdots,&b_m,&\overbrace{b_{m+1},\ \cdots,\ b_n}\makebox[0cm][l]{$\}$}
\end{array}$",(0,0));

draw((58.75,0)--(66.75,0));
draw((62.75,0){up}..(60,15)..(5,30)..(-57,17),Arrow(TeXHead,1.7));
//dot((0,0));
//dot((100,0));
//dot((62.75,0));
//dot((-63,23));