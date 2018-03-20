# Taller1

int a = 0;
int b = 0;
int c = 0;
int x1 = 0;
int x2 = 0;
int contador = 0;
int ganar = 0;
int x =0;
int y = 0;

int [] X = {300, 300, 360, 300, 240, 300, 500, 500, 100, 100};
int [] Y = {100, 200, 260, 320, 260, 420, 420, 100, 100, 420};
int[][] usuario = new int[10][10];
int [] trazo = new int[4];

void setup(){
  size(600,600);
  background(100,100,100);
  
}
            
             //0  1  2  3  4  5  6  7  8  9
int[][] M = { {0, 1, 0, 0, 0, 0, 0, 1, 1, 0}, //0
              {1, 0, 1, 1, 1, 0, 0, 1, 0, 0}, //1
              {0, 1, 0, 1, 0, 1, 1, 0, 0, 0}, //2
              {0, 1, 1, 0, 1, 1, 0, 0, 0, 1}, //3
              {0, 1, 0, 1, 0, 0, 0, 0, 1, 0}, //4
              {0, 0, 0, 1, 0, 0, 1, 0, 0, 1}, //5
              {0, 0, 0, 0, 0, 1, 0, 1, 0, 0}, //6
              {1, 0, 0, 0, 0, 0, 1, 0, 0, 0}, //7
              {1, 0, 0, 0, 1, 0, 0, 0, 0, 1}, //8
              {0, 0, 0, 0, 0, 1, 0, 0, 1, 0},};//9

void draw(){
   if(x1 == 0){
     textSize(25);
     text("Bienvenido a LINE, presione X para comenzar", 30,500);
   if(keyPressed == true && key == 'x'){
      x1++;
     background(100,100,100);
   }
  line(300, 100, 300, 200);
  line(300, 200, 360, 260);
  line(360, 260, 300, 320);
  line(300, 320, 240, 260);
  line(240, 260, 300, 200);
  line(300, 200, 300, 320);
  line(300, 320, 300, 420);
  line(300, 420, 500, 420);
  line(500, 420, 500, 100);
  line(500, 100, 300, 100);
  line(300, 100, 100, 100);
  line(100, 100, 100, 420);
  line(100, 420, 300, 420);
   }
 else{
   a = X.length;
   if(M[x][y] == 1);
   stroke(0,0,0);
    
 }
 for(int a1 =0; a1<a; a1++){
   ellipse(X[a1], Y[a1], 30, 30);
 }
 
if(contador==13){
  for(int f=0;f<10;f++){
  for(int c=0;c<10;c++){
  if(usuario[f][c]!=1){
  usuario[f][c]=0;
  }
  }
  }
 for(int rf=0;rf<10;rf++){
 for(int rc=0;rc<10;rc++){
 if(usuario[rf][rc]!=M[rf][rc]){
    ganar=1;
   }
 }
}
 }
 
if((contador==13)&&(ganar==1)){
text("Acaba de ganar, vuelve a jugar con la tecla A",30,500);//se coloco texto
     if (keyPressed==true&&key=='a'){//reiniciar
     
  background(100, 100, 100);
  line(300, 100, 300, 200);
  line(300, 200, 360, 260);
  line(360, 260, 300, 320);
  line(300, 320, 240, 260);
  line(240, 260, 300, 200);
  line(300, 200, 300, 320);
  line(300, 320, 300, 420);
  line(300, 420, 500, 420);
  line(500, 420, 500, 100);
  line(500, 100, 300, 100);
  line(300, 100, 100, 100);
  line(100, 100, 100, 420);
  line(100, 420, 300, 420);
   x2=0;
   contador=0;
   ganar= 0;
   for(int lf=0;lf<10;lf++){
 for(int lc=0;lc<10;lc++){
  usuario[lf][lc]=0;
 }
}
}
 }//mensaje de ganar
 if((contador==13)&&(ganar==0)){
  //fill(243,243,28);
  text("Acaba de perder oprima R, y vuelve a jugar",250,500);//se coloco texto
   x2=0;
   contador=0;
   ganar=0;
 for(int l1=0;l1<10;l1++){
 for(int l2=0;l2<10;l2++){
 usuario[l1][l2]=0;
 }
}
 }
   if (keyPressed==true&&key=='r'){//reiniciar
   
 background(100, 100, 100);

   x2=0;
   contador=0;
   ganar=0;
   
     for(int l1=0;l1<10;l1++){
     for(int l2=0;l2<10;l2++){
     usuario[l1][l2]=0;

}
}
  }
 }
 
 void mouseClicked() {
  if(x2==0){
  for(b=0;b<10;b++){
    strokeWeight(3);
  if((mouseX>=X[b]-10)&&(mouseX<=X[b]+10)&&(mouseY>=Y[b]-10)&&(mouseY<=Y[b]+10)){
  trazo[0]=X[b];
  trazo[1]=Y[b];
  c=b;
  x2++; 
  }
  }
  }
 else{
   
 for(b=0;b<10;b++){
  if((mouseX>=X[b]-10)&&(mouseX<=X[b]+10)&&(mouseY>=Y[b]-10)&&(mouseY<=Y[b]+10)){
  trazo[2]=X[b];
  trazo[3]=Y[b];
  if(M[c][b]==1){
    stroke(0,0,255); 
    //strokeWeight();
  line(trazo[0],trazo[1],trazo[2],trazo[3]);
  trazo[0]=trazo[2];
  trazo[1]=trazo[3];
  usuario[b][c]=1;
  usuario[c][b]=1;
  c=b;
  contador++;
  println(contador);
   }
  }
 }
 }
 }
