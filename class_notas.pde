class notas {

  //Propiedades
  PImage lira; 
  PImage [] notas = new PImage[4];
  float noteX, noteXA, noteXB, noteXC, noteY;
  int NotasTocadas= 0;

  //Costructor

  notas() {
    lira = loadImage ("lira.png");
    notas[0] = loadImage ("nota0.png");
    notas[1] = loadImage ("nota1.png");
    notas[2] = loadImage ("nota2.png");
    notas[3] = loadImage ("nota3.png");
    image(lira, mouseX, 700, 130, 130);
  }
  void Move() {
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
  }

  //Metodos
  void colision() {
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
}
