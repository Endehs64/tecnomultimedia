// Funciones propias SIN parametros
void pantalla1() {
  PImage a1;
  a1 = loadImage("venti_catching.png");
  background(149, 219, 206);
  image(a1, 0, 0);
}

void pantalla2() {
  t++;
  textFont(intro);
  texto("Tiempo: "+ t + "/1000", 16, 20, 20, 255);
  texto("Puntos: "+ NotasTocadas+ "/150", 16, 200, 20, 255);
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
  image(notas[0], noteX, noteY*2, 40, 40 );
  image(notas[1], noteXA, noteY*3, 40, 40 );
  image(notas[2], noteXB, noteY, 40, 40 );
  image(notas[3], noteXC+10, noteY*2, 40, 40 );

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
  //Fondo Puntitos
  for (int i = 0; i < 800; i = i+20) {
    for (int j = 0; j < 800; j = j+20) {
      point(j, i);
    }
  }
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
void texto(String texto, float tam, float xi, float yu, float ehe) {
  pushStyle();
  fill(ehe);
  textSize(tam);
  text(texto, xi, yu);
  popStyle();
}
void reinicio() {
  NotasTocadas= 0; 
  t=0;
  noteX = 0;
  noteY = 0;
  noteXA= 0;
  noteXB= 0;
  noteXC= 0;
  noteY= 0;
  x = 120;
  y= 420;
  w = 160; 
  h = 100; 
  yA= 560; 
  hA = 60; 
  yB= 650; 
  hB = 100;
}
