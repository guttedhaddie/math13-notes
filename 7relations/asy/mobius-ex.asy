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
");

size(250,200);

import graph;
import palette;

int n=256;
real ninv=1/n;
real[][] v=new real[n][n];

for(int i=0; i < n; ++i)
  for(int j=0; j < n; ++j)
    v[i][j]=1-(i*ninv)-(j*ninv)+2(i*j*ninv^2);

pen[] Palette=Rainbow();

picture bar;

bounds range=image(v,(0,0),(1,1),Palette);
palette(bar,"$F(x,y)=1-x-y+2xy$",range,(0,0),(10,150),Right,Palette,
        PaletteTicks("$%+#.1f$"));
add(bar.fit(),point(E),30E);

draw((0,1)--(0,0)--(1,0));
draw((0,0.25)--(0,0)--(0.25,0),Arrows);
xaxis("$x$",0,1.1,RightTicks(new real[]{0,1}));
yaxis("$y$",0,1.1,LeftTicks(new real[]{0,1}));
xtick(Label("$\frac 12$",align=S),0.5,S);
ytick(Label("$\frac 12$",align=W),0.5,W);