//https://youtu.be/SaQh5n3bG9w

juego vent, elo;

float pantalla = 1;
int x = 120, y= 420, w = 160, h = 100, yA= 560, hA = 60, yB= 650, hB = 100;

void setup() {
  size( 400, 800 );
  vent=new juego();
  elo=new juego();
}


void draw() {
  
  background(149, 219, 206);
  //========== pantallas ==========

  if (pantalla==1) {            //si pantalla es 1, ejecuta pantalla de inicio 
    vent.menuimg();
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
    vent.iniciar();
  } 
  if (pantalla==3) {          //si pantalla es 3, ejecuta Objetivos
    elo.objetivos();
  }
  if (pantalla==4) {          //si pantalla es 2, ejecuta  Creditos
    elo.creditos();
  }
}

void keyPressed() {
  if ((key=='r') || (key=='R')) {
    pantalla=1;
    elo.reciclar();
  }
}
