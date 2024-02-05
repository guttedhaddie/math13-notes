texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
%\input{../../preamble}
");
import graph;

size(3cm,3cm);
            
pair a1=(1,0);
pair a2=(2,0);
pair a3=(1,1);
pair a4=(2,1);
            
pair b1=a3;
pair b2=a4;
pair b3=(1,2);
pair b4=(2,2);
            
pair c1=(0,1);
pair c2=a3;
pair c3=(0,2);
pair c4=(1,2);
            
draw(a1--a2, linewidth(2));
draw(a1--a3, linewidth(2));
draw(a3--a4);
draw(a2--a4, linewidth(2));

            
draw(b1--b2);
draw(b1--b3);
draw(b3--b4, linewidth(2));
draw(b2--b4, linewidth(2));

            
draw(c1--c2, linewidth(2));
draw(c1--c3, linewidth(2));
draw(c3--c4, linewidth(2));
draw(c2--c4);
            
fill(a1 -- a2 -- a4 -- a3 -- cycle, yellow);
fill(b1 -- b2 -- b4 -- b3 -- cycle, yellow);
fill(c1 -- c2 -- c4 -- c3 -- cycle, yellow);
            
draw(a3--a4);
draw(b1--b3);