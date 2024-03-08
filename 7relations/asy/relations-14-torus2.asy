settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");

size(250,200);

import graph;
import palette;

int n=256;
real ninv=2pi/n;
real[][] v=new real[n][n];

for(int i=0; i < n; ++i)
  for(int j=0; j < n; ++j)
    v[i][j]=sin(i*ninv)*cos(j*ninv);

pen[] Palette=Rainbow();

picture bar;

bounds range=image(v,(0,0),(1,1),Palette);
palette(bar,"$f\bigl([(x,y)]\bigr)=\sin(2\pi x)\cos(2\pi y)$",range,(0,0),(10,150),Right,Palette,
        PaletteTicks("$%+#.1f$"));
add(bar.fit(),point(E),30E);

draw((0,1)--(0,0)--(1,0));
draw((0,0.25)--(0,0)--(0.25,0),Arrows);
xaxis(0,1.1,RightTicks(new real[]{0,1}));
yaxis(0,1.1,LeftTicks(new real[]{0,1}));
xtick(Label("$\frac 12$",align=S),0.5,S);
ytick(Label("$\frac 12$",align=W),0.5,W);
labelx("$x$",1.1);
labely("$y$",1.1);