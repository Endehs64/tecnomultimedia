float pantalla;
int x = 100;
int y = 260;
int w = 200;
int h = 300;
PImage ins;
PFont intro;
int poX=400;


void setup() {
  size( 400, 800 );
  background(149, 219, 206);
  pantalla=1;              //pantalla arranca en 1 apenas cargas el programa.

  //carga imagenes y tipografia
  ins = loadImage("instrucciones.png");
  intro= createFont("Orbitron.ttf", 12);
  
}

void draw() {

  background(149, 219, 206);

  //pantallas
  if (pantalla==1) {            //si pantalla es 1, ejecuta la primera pantalla y el botón
    pantalla1();
    if ((mouseX>x)&&(mouseX<x+w)&&(mouseY>y)&&(mouseY<y+h && mousePressed)) {
      pantalla=2;        //al tocar el botón cambia pantalla a 2
    }
  }
  if (pantalla==2) {          //si pantalla es 2, ejecuta el juego
    background(149, 219, 206);
    textFont(intro);
    text("Presiona [V] para", 260, 20);
    text("las instrucciones", 260, 40);
    image(ins, poX, poX);
    pantalla2();
  }
} 


void keyPressed() {
  if ((key=='v') || (key=='V')) {
    poX=400-poX;
  }
}
