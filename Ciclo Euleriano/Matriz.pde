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
           