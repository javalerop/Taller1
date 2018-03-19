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