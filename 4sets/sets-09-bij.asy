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

size(200);

path c=box((-3,-2),(5,6));
real dx=0.1;
real f(real x){return 2+1/(1-x);}
draw(graph(f,-3,1-dx),red);
draw(graph(f,1+dx,5),heavygreen);
clip(c);

//draw((0,-0.5)--(4pi,-0.5),dashed);

xaxis(Label("$x$",black),1+dx,5,heavygreen);
xaxis(-3,1-dx,red);
yaxis(Label("$y$",black),2+dx,6,red);
yaxis(-2,2-dx,heavygreen);

dotfactor=12;
dot((1,0),NoFill);
dot((0,2),NoFill);

for(int i=-2; i<=4; ++i){
  if(i==0) {} else{xtick(Label("$" + string(i) +"$",align=S),i,S);}
  if(i==-1) {} else{ytick(Label("$" + string(i+1) +"$",align=W),i+1,W);}
  }

draw((2.5,0)--(2.5,f(2.5))--(0,f(2.5)),dashed+heavygreen,EndArrow);
draw((-2,0)--(-2,f(-2))--(0,f(-2)),dashed+red,EndArrow);
