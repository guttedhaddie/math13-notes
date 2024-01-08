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
//import animate;

size(250);

//draw min m, max n, pole p, max disk size M, polesep 2M, shiftup s. all heights doubled

int M=5;

int[] l={1,2,3,4,5};
int[] m;
int[] r;

void poles(int M){
	draw((-M-1,0)--(5M+1,0));
	draw((0,0)--(0,2M+0.5));
	draw((2M,0)--(2M,2M+0.5));
	draw((4M,0)--(4M,2M+0.5));
	}

void tower(){
	for(int i=0; i<l.length; ++i){
		filldraw(shift((0,2(l.length-i-1)))*box((-l[i],0),(l[i],2)),((l[i])/M)*red+((M-l[i])/M)*green);
		}
	for(int i=0; i<m.length; ++i){
		filldraw(shift((2M,2(m.length-i-1)))*box((-m[i],0),(m[i],2)),((m[i])/M)*red+((M-m[i])/M)*green);
		}
	for(int i=0; i<r.length; ++i){
		filldraw(shift((4M,2(r.length-i-1)))*box((-r[i],0),(r[i],2)),((r[i])/M)*red+((M-r[i])/M)*green);
		}
	}
	

	
picture p1;
size(p1,100);
//draw((2,3){dir(-30)}..(5,1){SE},Arrow);
tower();
poles(M);
label("$\left.\text{\rule{0pt}{34pt}}\right\}n$ disks",(4,6.2),E);
add(p1,currentpicture.fit(),(0,0));
erase();

m.insert(0,1,2,3,4);
l.delete(0,3);

picture p2;
size(p2,100);
draw(Label("$r_n$ moves",align=N),(1,4){dir(30)}..(6.5,4){dir(-30)},Arrow);
tower();
poles(M);
add(p2,currentpicture.fit(),(280,0));
erase();

r.insert(0,5);
l.delete();

picture p3;
size(p3,100);
//draw((5,2.5){dir(30)}..(7,3){dir(0)},Arrow);
tower();
poles(M);
draw(Label("1 move",align=NE),(1,3){dir(60)}..(10,9)..(19,3){dir(-60)},Arrow);
add(p3,currentpicture.fit(),(0,-110));
erase();

r.insert(0,1,2,3,4);
m.delete(0,3);

picture p4;
size(p4,100);
tower();
poles(M);
draw(Label("$r_n$ moves",align=2N),(11,4){dir(45)}..(16.5,6){dir(0)},Arrow);
add(p4,currentpicture.fit(),(280,-110));
erase();

add(p1,(0,0));
add(p2,(0,0));
add(p3,(0,0));
add(p4,(0,0));


