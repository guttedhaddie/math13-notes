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

size(200);

real sl=55;

void rect(real z, real x, real h){path p=(0,0)--(1,0)--(1+h/(Tan(sl)),h)--(h/(Tan(sl)),h)--cycle;
									filldraw(shift((x,z))*p,lightgray);}

void rectcut(real z, real x, real h){rect(z,x,h);
									draw(shift((x,z))*((1+h/(2*Tan(sl)),h/2)--(h/(2*Tan(sl)),h/2)),dashed);}

for(int i=0; i<12; ++i){
		rectcut(i/60,0,0.4);
	}
	

for(int i=0; i<24; ++i){
		rect(0.0+i/60,2.5,0.2);
	}
	
draw(Label("\tiny Cut and stack",align=N),(1.2,0.2)..(1.7,0.25)..(2.4,0.27){E},Arrow);