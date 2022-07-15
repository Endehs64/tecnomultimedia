float pantalla, noteX, noteXA, noteXB, noteXC, noteY;
int x = 120, y= 420, w = 160, h = 100, yA= 560, hA = 60, yB= 650, hB = 100;
PImage lira; //note;
PFont intro;
String estado;
int NotasTocadas= 0, puntaje= 250, t;
PImage [] notas = new PImage[4];

void setup() {
  size( 400, 800 );
  notas[0] = loadImage ("nota0.png");
  notas[1] = loadImage ("nota1.png");
  notas[2] = loadImage ("nota2.png");
  notas[3] = loadImage ("nota3.png");

  estado = "inicio";
  pantalla=1;              //pantalla arranca en 1 apenas cargas el programa.

  //Cargas
  intro= createFont("Orbitron.ttf", 12);
  lira = loadImage ("lira.png");
}

void draw() {

  background(149, 219, 206);

  //========== pantallas ==========
  if (pantalla==1) {            //si pantalla es 1, ejecuta pantalla de inicio 
    pantalla1();
    if ((mouseX>x)&&(mouseX<x+w)&&(mouseY>y)&&(mouseY<y+h && mousePressed)) {
      pantalla=2;        //al tocar el botón cambia pantalla a 2
    }
    if ((mouseX> x)&&(mouseX<x+w)&&(mouseY>yA)&&(mouseY<yA+hA && mousePressed)) {
      pantalla=3;        //al tocar el botón cambia pantalla a 3
    }
    if ((mouseX> x)&&(mouseX<x+w)&&(mouseY>yB)&&(mouseY<yB+hB && mousePressed)) {
      pantalla=4;        //al tocar el botón cambia pantalla a 3
    }
  }
  if (pantalla==2) {          //si pantalla es 2, ejecuta el Juego
    pantalla2();
  } 
  if (pantalla==3) {          //si pantalla es 3, ejecuta Objetivos
    pantalla3();
  }
  if (pantalla==4) {          //si pantalla es 2, ejecuta  Creditos
    pantalla4();
  }
  // ========== Estados ==========

  if ( NotasTocadas >= puntaje ) {
    estado = "ganar";
    background(149, 219, 206);
    textFont(intro);
    PImage win;
    win = loadImage("ganaste.png");
    image(win, 15, 0, 365, 344);
    texto("Ganaste!", 60, 50, 450, 255);
    texto("Presiona [R] para", 16, 110, 560, 255);
    texto("volver al inicio", 16, 120, 590, 255);
  }
  t++;
  if (t >= 1500 ) {
    estado = "perder" ;
    background(235, 99, 107);
    textFont(intro);
    PImage loser;
    loser = loadImage("perdiste.png");
    image(loser, 15, 0, 365, 344);
    texto("Perdiste...", 60, 50, 450, 255);
    texto("Presiona [R] para", 16, 110, 560, 255);
    texto("volver al inicio", 16, 120, 590, 255);
  }
}

void keyPressed() {

  if ((key=='r') || (key=='R')) {
    pantalla= 1;
    reinicio();
  }
}
