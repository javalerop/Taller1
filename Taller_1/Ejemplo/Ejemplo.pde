import ddf.minim.*;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

int c;
int d;
int x1;
int y1;
int x2;
int y2;
int mX;
int mY;
int i;
int value= 0;
int [] a = {300, 300, 360, 300, 240, 300, 500, 500, 100, 100};
int [] b = {100, 200, 260, 320, 260, 420, 420, 100, 100, 420};
int[] a1 = new int[15];
int[] b1 = new int[15];
color G;
int k;

void setup() {
  size(600, 600);
}    

void draw() {
  background(50, 10, 51);
  strokeWeight(6);
  pushStyle();
  strokeWeight(2);
  stroke(255);
   line(300,100,300,200);
   line(300,200,360,260);
   line(360,260,300,320);
   line(300,320,240,260);
   line(240,260,300,200);
   line(300,200,300,320);
   line(300,320,300,420);
   line(300,420,500,420);
   line(500,420,500,100);
   line(500,100,300,100);
   line(300,100,100,100);
   line(100,100,100,420);
   line(100,420,300,420);
  popStyle();
  pushStyle();
  stroke(219, 190, 0);
  strokeWeight(7);
  for (int j=0; j< 10; j++) {
    ellipse (a[j], b[j], 30,30);
  } 
  popStyle();
  stroke (255,0,0);
  int[][] M = { {0, 1, 0, 0, 0, 0, 0, 0, 1, 0}, 
                {0, 0, 1, 1, 1, 0, 0, 1, 0, 0}, 
                {0, 1, 0, 1, 0, 1, 1, 0, 0, 0}, 
                {0, 1, 1, 0, 1, 1, 0, 0, 0, 1}, 
                {0, 1, 0, 1, 0, 0, 0, 0, 1, 0}, 
                {0, 0, 0, 1, 0, 0, 1, 0, 0, 1}, 
                {0, 0, 0, 0, 0, 1, 0, 1, 0, 0}, 
                {1, 0, 0, 0, 0, 0, 1, 0, 0, 0}, 
                {1, 0, 0, 0, 1, 0, 0, 0, 0, 1}, 
                {0, 0, 0, 0, 0, 1, 0, 0, 1, 0}, };
  //&& G == color (219,190,0)
  for (int z=0; z<value; z++) {
  }
  if ( M[c][d] == 1 && value <=14 && value >1 ) { 
    for (k=0; (k+1)<value; k++) {
      x1=a1[(value-2-k)];
      y1=b1[(value-2-k)];
      x2=a1[(value-1-k)];
      y2=b1[(value-1-k)];
      line(x1, y1, x2, y2);
    }
  } else if ( M[c][d]==0 && value>1 && M[d][c]==0 ) {
    println("Invalid move");
    //JOptionPane.showMessageDialog(frame, "Vuelve a jugar");
  } else if (value >14) { 
    println ("Out of bounds, try again");
  }
}

void mouseClicked() {
  c=d;
  //G = get (mouseX, mouseY);
  for (i =0; i<=9; i++) {
    mX= a [i];
    mY= b [i];
    if (abs (mX - mouseX)< 6 && abs (mY - mouseY) < 6) {
      value=value+1;
      d=i;
      a1[value-1]= a[i];
      b1[value-1]= b[i];
    }
  }
}