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
import animate;

size(100,100);

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
	
animation A;
	   
void lm(){save();
	m.insert(0,l[0]);
	l.delete(0);
	tower();
	poles(M);
  	A.add();
	restore();}
	
void lr(){save();
	r.insert(0,l[0]);
	l.delete(0);
	tower();
	poles(M);
  	A.add();
	restore();}

void rm(){save();
	m.insert(0,r[0]);
	r.delete(0);
	tower();
	poles(M);
  	A.add();
	restore();}
	
void ml(){save();
	l.insert(0,m[0]);
	m.delete(0);
	tower();
	poles(M);
  	A.add();
	restore();}
	
void rl(){save();
	l.insert(0,r[0]);
	r.delete(0);
	tower();
	poles(M);
  	A.add();
	restore();}

void mr(){save();
	r.insert(0,m[0]);
	m.delete(0);
	tower();
	poles(M);
  	A.add();
	restore();}

save();
	tower();
	poles(5);
  A.add();
restore();

lr();
lm();
rm();
lr();
ml();
mr();
lr();
lm();
rm();
rl();
ml();
rm();
lr();
lm();
rm();

lr();

ml();
mr();
lr();
ml();
rm();
rl();
ml();
mr();
lr();
lm();
rm();
lr();
ml();
mr();
lr();

label(A.pdf("controls",multipage=false),fontsize(5));