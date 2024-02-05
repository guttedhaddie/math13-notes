settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
//import animate;

size(140,0);

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
	
m.insert(0,1,2,3,4);
l.delete(0,3);

draw((1,5){dir(0)}..(6.5,4),Arrow);
tower();
poles(M);

label("$r_n$ moves",(2M,-3));