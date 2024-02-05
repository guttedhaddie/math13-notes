settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;
//import animate;

size(200);

//draw min m, max n, pole p, max disk size M, polesep 2M, shiftup s. all heights doubled

int M=2;

int[] l={1,2};
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
	

void lm(){m.insert(0,l[0]);
	l.delete(0);
	}
	
void lr(){r.insert(0,l[0]);
	l.delete(0);
	}

void rm(){m.insert(0,r[0]);
	r.delete(0);
	}
	
void ml(){l.insert(0,m[0]);
	m.delete(0);
	}
	
void rl(){l.insert(0,r[0]);
	r.delete(0);
	}

void mr(){r.insert(0,m[0]);
	m.delete(0);
	}


picture p1;
size(p1,100);
draw((2,3)..(3.7,1){dir(300)},Arrow);
tower();
poles(M);
add(p1,currentpicture.fit(),(0,0));
erase();

lm();
picture p2;
size(p2,100);
draw((1,2.5){dir(30)}..(7,2.5){dir(-30)},Arrow);
tower();
poles(M);
add(p2,currentpicture.fit(),(220,0));
erase();

lr();
picture p3;
size(p3,100);
draw((5,2.5){dir(30)}..(7,3){dir(0)},Arrow);
tower();
poles(M);
add(p3,currentpicture.fit(),(440,0));
erase();

mr();
picture p4;
size(p4,100);
tower();
poles(M);
add(p4,currentpicture.fit(),(660,0));
erase();

add(p1,(0,0));
add(p2,(0,0));
add(p3,(0,0));
add(p4,(0,0));

