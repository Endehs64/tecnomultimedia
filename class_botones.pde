class ventanas {

  //Propiedades
  int x = 120, y= 420, w = 160, h = 100, yA= 560, hA = 60, yB= 650, hB = 100;
  int  puntaje= 150, t=0, NotasTocadas= 0;
  String estado;
  PFont intro;
  PImage a1;

  //Constructor
  ventanas(float pantalla) {
    estado = "inicio";
    intro= createFont("Orbitron.ttf", 12);
    pantalla= 1;

    //========== pantallas ==========//

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
  void texto(String texto, float tam, float xi, float yu, float ehe) {
    pushStyle();
    fill(ehe);
    textSize(tam);
    text(texto, xi, yu);
    popStyle();
  }
  void pantalla1() {
    a1 = loadImage("venti_catching.png");
    background(149, 219, 206);
    image(a1, 0, 0);
  }

  void pantalla2() {
    t++;
    textFont(intro);
    texto("Tiempo: "+ t + "/1000", 16, 20, 20, 255);
    texto("Puntos: "+ NotasTocadas+ "/150", 16, 200, 20, 255);
  }

  void pantalla3() {
    background(149, 219, 206);
    PImage b1;
    b1 = loadImage("Anemo.png");
    image(b1, 120, 20, 150, 150);
    textFont(intro);
    texto("Objetivo", 40, 110, 200, 255);
    texto("Ayuda a Venti", 26, 90, 240, 255);
    texto("recolectando la mayor", 26, 40, 280, 255);
    texto("cantidad de notas", 26, 70, 320, 255);
    texto("Instrucciones", 40, 50, 380, 255);
    texto("Mueve el mouse de", 26, 60, 420, 255);
    texto("izquierda a derecha", 26, 60, 460, 255);
    texto("para agarrar las notas", 26, 40, 500, 255);
    texto("Presiona [R] para", 16, 110, 560, 255);
    texto("volver al inicio", 16, 120, 590, 255);
  }
  void pantalla4() {
    background(149, 219, 206);
    PImage b1;
    b1 = loadImage("Anemo.png");
    image(b1, 120, 20, 150, 150);
    textFont(intro);
    texto("Creditos", 40, 110, 250, 255);
    texto("Creador: Rocio Vera  Legajo: 83600/4", 17, 20, 350, 255);
    texto("Materia: Tecnologia Multimedial", 17, 20, 390, 255);
    texto("Profe: Matias Jauregui Lorda", 17, 20, 430, 255);
    texto("Origenes Graficos: Genshin Impact", 17, 20, 470, 255);
    texto("Presiona [R] para", 16, 110, 560, 255);
    texto("volver al inicio", 16, 120, 590, 255);
  }
  {
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
    if (t >= 1200 ) {
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
}
