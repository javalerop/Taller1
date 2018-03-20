# Taller1 : 
El repositorio esta denominado Taller1, y dentro de esta carpeta se puede encontrar los diferentes archivos, en lo que concierne con las partes del taller, las cuales estan divididas de la siguiente manera, matriz, funcionamiento, movimiento, las cuales estan relacionadas entre si.

Este taller esta hecho solamente en un nivel, debido a que todavia se estan desarrollando los niveles superiores, por lo tanto solamente cuenta con una matriz y sus coordenadas, tambien contiene un contador, el cual es el encargado de tener un numero exacto de movimientos (lineas o arcos) y condicionales los cuales sirven para poder conocer si la persona o el usario que esta jugando acaba de perder o acaba de ganar.


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
             
