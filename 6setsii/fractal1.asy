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
import graph;
//import animation;

size(220);

transform S=scale(1/2);
transform T=shift((1/2,0))*rotate(90)*scale(1/4);
transform U=shift((1/2,1/4))*scale(1/4);
transform V=shift((3/4,1/4))*rotate(-90)*scale(1/4);
transform W=shift((3/4,0))*scale(1/4);

picture P;
draw(P,(0,0)--(1,0),linewidth(0.5));
//filldraw(P,unitsquare,linewidth(0.1));

int N=1;

//animation A;

//save();
//add(P);
//A.add();
//restore();

picture Q=P;

for(int i=1; i<=N; ++i){
//save();
picture R;
add(R,S*Q);
add(R,T*Q);
add(R,U*Q);
add(R,V*Q);
add(R,W*Q);
erase(Q);
Q=R;
//A.add(R);
add(P,R);
//restore();
}

//label(A.pdf("controls",multipage=false),fontsize(5));

add(Q);