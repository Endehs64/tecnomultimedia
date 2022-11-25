class notas {
  //Propiedades

  String estado = "inicio";
  PFont intro = createFont("Orbitron.ttf", 12);
  PImage lira; 
  PImage [] notas = new PImage[4];
  float noteX, noteXA, noteXB, noteXC, noteY;
  int NotasTocadas= 0, puntaje= 150;

  //Costructor

  notas() {
    notas[0] = loadImage ("nota0.png");
    notas[1] = loadImage ("nota1.png");
    notas[2] = loadImage ("nota2.png");
    notas[3] = loadImage ("nota3.png");
  }

  //Metodos

  void move() {
    lira = loadImage ("lira.png");
    image(lira, mouseX, 700, 130, 130);

    if (noteY>height) {
      noteY=0;
      noteX=random(10, 350);
      noteXA=random(90, 100);
      noteXB=random(250, 350);
      noteXC=random(50, 85);
    } else {
      noteY+=5;
    }
    image(notas[0], noteX, noteY*4, 40, 40 );
    image(notas[1], noteXA, noteY*3, 40, 40 );
    image(notas[2], noteXB, noteY, 40, 40 );
    image(notas[3], noteXC+10, noteY*2, 40, 40 );
  }


  void colision() {

    texto("Puntos: "+ NotasTocadas+ "/150", 16, 200, 20, 255);

    if (dist(noteX+10, noteY*2, mouseX+64, 750)<60) {
      noteX= -1000;
      NotasTocadas+= 1;
    }
    if (dist(noteXA+10, noteY*3, mouseX+64, 750 )<60) {
      noteXA= -1000;
      NotasTocadas+= 1;
    }

    if (dist(noteXB+15, noteY, mouseX+64, 750 )<60) {
      noteX= -1000;
      NotasTocadas+= 1;
    }
    if (dist(noteXC+20, noteY*2, mouseX+64, 750 )<60) {
      noteXA= -1000;
      NotasTocadas+= 1;
    }
  }
  void ganar() {
    if ( NotasTocadas >= puntaje ) {
      estado = "ganar";
      ingame.stop();
      background(149, 219, 206);
      textFont(intro);
      PImage win;
      win = loadImage("ganaste.png");
      image(win, 15, 0, 365, 344);
      texto("Ganaste!", 60, 50, 450, 255);
      texto("Presiona [R] para", 16, 110, 560, 255);
      texto("volver al inicio", 16, 120, 590, 255);
    }
  }

  void texto(String texto, float tam, float xi, float yu, float ehe) {
    pushStyle();
    fill(ehe);
    textSize(tam);
    text(texto, xi, yu);
    popStyle();
  }
  void reinicionotas() {
    NotasTocadas= 0; 
    noteX = 0;
    noteY = 0;
    noteXA= 0;
    noteXB= 0;
    noteXC= 0;
    noteY= 0;
  }
}
