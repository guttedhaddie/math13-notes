settings.tex="pdflatex";

texpreamble("\usepackage{amsmath}
\usepackage{amsthm,amssymb}
\usepackage{mathpazo}
\usepackage[svgnames]{xcolor}
");
import graph;

size(110);
            
pair[][] points;
            
points=identity(5);            
            
for(int i = 0; i < 5; ++i) {
	for(int j = 0; j < 5; ++j) {
		points[i][j] = (i, j);
		//dot(points[i][j]);
      
		if(i < 4) {
			draw((i, j)--(i + 1, j));
		}
		if(j < 4) {
			draw((i, j)--(i, j + 1));
		}
	}
}            
            
            
draw(points[1][1]--points[2][2]);
draw(points[1][2]--points[2][1]);   
            
fill(points[0][0]--points[1][0]--points[1][1]--points[0][1]--cycle, mediumblue);
fill(points[0][1]--points[1][1]--points[1][2]--points[0][2]--cycle, mediumblue);
fill(points[1][0]--points[2][0]--points[2][1]--points[1][1]--cycle, mediumblue);
            
fill(points[2][0]--points[3][0]--points[3][1]--points[2][1]--cycle, green);
fill(points[3][0]--points[4][0]--points[4][1]--points[3][1]--cycle, green);
fill(points[3][1]--points[4][1]--points[4][2]--points[3][2]--cycle, green);
            
fill(points[3][2]--points[4][2]--points[4][3]--points[3][3]--cycle, yellow);
fill(points[3][3]--points[4][3]--points[4][4]--points[3][4]--cycle, yellow);
fill(points[2][3]--points[3][3]--points[3][4]--points[2][4]--cycle, yellow);
            
fill(points[2][1]--points[3][1]--points[3][2]--points[2][2]--cycle, orange);
fill(points[2][2]--points[3][2]--points[3][3]--points[2][3]--cycle, orange);
fill(points[1][2]--points[2][2]--points[2][3]--points[1][3]--cycle, orange);
            
fill(points[0][2]--points[1][2]--points[1][3]--points[0][3]--cycle, red);
fill(points[1][3]--points[2][3]--points[2][4]--points[1][4]--cycle, red);
fill(points[0][3]--points[1][3]--points[1][4]--points[0][4]--cycle, red);
            
for(int i = 0; i < 5; ++i) {
	for(int j = 0; j < 5; ++j) {
		if(i < 4) {
          	if(j == 0 || j == 4)
            	draw((i, j)--(i + 1, j), linewidth(1));
            else if(j == 1 || j == 3) {
            	if(i == 1 || i == 2)
                	draw((i, j)--(i + 1, j), linewidth(1));
            	else
                	draw((i, j)--(i + 1, j));
            }
            else {
            	if (i == 0 || i == 1 || i == 3)
                	draw((i, j)--(i + 1, j), linewidth(1));
                else
                	draw((i, j)--(i + 1, j));
            }

		}
		if(j < 4) {
			if(i == 0 || i == 4) {
            	draw((i, j)--(i, j + 1), linewidth(1));
            }
            else if(i == 1 || i == 3) {
            	if(j == 1 || j == 2)
                	draw((i, j)--(i, j + 1), linewidth(1));
            	else
                	draw((i, j)--(i, j + 1));
            }
            else {
            	if (j == 0 || j == 1 || j == 3)
                	draw((i, j)--(i, j + 1), linewidth(1));
                else
                	draw((i, j)--(i, j + 1));
            }
		}
	}
}  