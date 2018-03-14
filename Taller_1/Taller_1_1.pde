import ddf.minim.*;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

Minim gestor;
AudioPlayer musica_fondo;
AudioSample sonido_impacto;
PImage imagen1;
PImage imagen2;
PImage imagen3;
//int x;
//int y;

void setup(){
size(800,700);
 stroke(0,0,255);
gestor = new Minim(this);
musica_fondo = gestor.loadFile("Fondo.mp3");
musica_fondo.setGain(-10);
musica_fondo.loop();
//imagen1 = loadImage("fondo2.jpg");
//image(imagen1, 0,0);
//x=300;
//y=200;
}

void draw(){
  
  color c2 = #FFCC00;
  fill(c2);
 strokeWeight(2);
 stroke(255,0,0);
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
 
 ellipse(300,100,30,30);
 ellipse(300,200,30,30);
 ellipse(360,260,30,30);
 ellipse(300,320,30,30); 
 ellipse(240,260,30,30);
 ellipse(300,420,30,30);
 ellipse(500,420,30,30);
 ellipse(500,100,30,30);
 ellipse(100,100,30,30);
 ellipse(100,420,30,30);
 
}

void mouseClicked() {
  System.out.println(Integer.toString(pmouseX));
  System.out.println(Integer.toString(pmouseY));
  
  pushStyle();  // Start another new style
stroke(0, 102, 153);
  
  if((pmouseX>300 && pmouseX<315) && (pmouseY>185 && pmouseY<215)){
    line(300,100,300,200);
     strokeWeight(2);
     stroke(0,0,255);
}
  if((pmouseX>345 && pmouseX<375) && (pmouseY>245 && pmouseY<275)){
    line(300,200,360,260);
    }
  if((pmouseX>285 && pmouseX<315) && (pmouseY>305 && pmouseY<320)){
    line(360,260,300,320);
}
  if((pmouseX>225 && pmouseX<255) && (pmouseY>245 && pmouseY<275)){
    line(300,320,240,260);
}
  if((pmouseX>284 && pmouseX<299) && (pmouseY>186 && pmouseY<216)){
    line(240,260,300,200);
}
  if((pmouseX>285 && pmouseX<315) && (pmouseY>321 && pmouseY<345)){
    line(300,200,300,320);
}
  if((pmouseX>300 && pmouseX<315) && (pmouseY>405 && pmouseY<435)){
    line(300,320,300,420);
  }
  if((pmouseX>485 && pmouseX<515) && (pmouseY>405 && pmouseY<435)){
    line(300,420,500,420);
  }
   if((pmouseX>485 && pmouseX<515) && (pmouseY>85 && pmouseY<115)){
    line(500,420, 500,100);
  }
   if((pmouseX>285 && pmouseX<315) && (pmouseY>85 && pmouseY<115)){
    line(500,100,300,100);
  }
    if((pmouseX>85 && pmouseX<115) && (pmouseY>85 && pmouseY<115)){
    line(300,100,100,100);
  }
   if((pmouseX>85 && pmouseX<115) && (pmouseY>405 && pmouseY<435)){
    line(100,100,100,420);
  }
  if((pmouseX>285 && pmouseX<299) && (pmouseY>405 && pmouseY<435)){
    line(100,420,300,420);
    JOptionPane.showMessageDialog(frame, "Seguro quieres seguir?");
    imagen2 = loadImage("ganadores.jpg");
    image(imagen2, 100,100);
    JOptionPane.showMessageDialog(frame, "Vuelve a jugar");
    popStyle(); 
}
}