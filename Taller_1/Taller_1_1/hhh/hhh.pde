int x;
int y;

void setup(){
  size(700,700);
  x=100;
  y=100;
}

void draw(){
 // background(250);
  color c2 = #FFCC00;
  fill(c2);
  ellipse(100,100,30,30);
  ellipse(600,100,30,30);
  ellipse(600,500,30,30);
  ellipse(100,500,30,30);

    }
void mouseClicked() {
stroke(255,0,0);
strokeWeight(2);
line(x, y, pmouseX, pmouseY);
x=pmouseX;
y=pmouseY;

}
    
    