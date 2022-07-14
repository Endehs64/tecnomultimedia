float pantalla, noteX=50, noteY=0;
int x = 120, y= 420, w = 160, h = 100;
int  yA= 560, hA = 60;
int  yB= 650, hB = 100;
PImage lira, note;
PFont intro;

void setup() {
  size( 400, 800 );
 
  pantalla=1;              //pantalla arranca en 1 apenas cargas el programa.
  
  //Cargas
  intro= createFont("Orbitron.ttf", 12);
  lira = loadImage ("lira.png");
  note = loadImage ("nota.png");
  
}

void draw() {

  background(149, 219, 206);

  //pantallas
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
  
}
void keyPressed() {
 
  if ((key=='r') || (key=='R')) {
    pantalla= 1;
    reinicio();
  }
}
