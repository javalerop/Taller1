
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