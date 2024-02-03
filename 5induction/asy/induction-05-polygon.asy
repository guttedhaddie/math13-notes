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

size(150);

pair[] P={dir(8),dir(20),dir(40),dir(90),dir(140),dir(160),dir(172)};

draw(P[2]--P[3]--P[4]);
draw(P[1]--P[2]--P[4]--P[5],blue);
draw(P[0]--P[1],dashed+blue);
draw(P[5]--P[6],dashed+blue);

dot("$A$",P[3],N);
dot("$B$",P[4],W);
dot("$C$",P[2],E);

label("$\mathcal{P}_n$",(0,0.3),blue);

draw(Label("$\gamma$",align=0.5P[3]+0.5P[4]-P[2]),arc(P[2],0.2,(180/pi)*angle(P[3]-P[2]),(180/pi)*angle(P[4]-P[2]),CCW));
draw(Label("$\beta$",align=2(0.6P[3]+0.4P[2]-P[4])),arc(P[4],0.2,(180/pi)*angle(P[3]-P[4]),(180/pi)*angle(P[2]-P[4]),CW));
draw(Label("$\alpha$",align=0.5P[2]+0.5P[4]-P[3]),arc(P[3],0.1,(180/pi)*angle(P[4]-P[3]),(180/pi)*angle(P[2]-P[3]),CCW));