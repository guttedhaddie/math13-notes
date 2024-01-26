settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
%\input{../../preamble}
");
import graph;

//size(200);

label("$\begin{array}{rc@{\ }c@{\ }c@{\ }c@{\ }c@{\ }c@{\ }c}
A=&\makebox[0cm][r]{$\{$}a_1,&a_2,&a_3,&\cdots,&a_m\makebox[0cm][l]{$\}$}&&\\[-8pt]
&\!\!\rotatebox{-90}{$\mapsto$}&\!\!\rotatebox{-90}{$\mapsto$}&\!\!\rotatebox{-90}{$\mapsto$}&&\!\!\rotatebox{-90}{$\mapsto$}&&\\[1pt]
B=&\makebox[0cm][r]{$\{$}b_1,&b_2,&b_3,&\cdots,&b_m,&\cdots,&b_n\makebox[0cm][l]{$\}$}
\end{array}$",(0,0));
