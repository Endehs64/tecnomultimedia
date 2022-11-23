import processing.sound.*;
SoundFile menu, ingame;
juego vent;

void setup() {
  size( 400, 800 );

  ingame = new SoundFile(this, "Ingame.mp3");
  menu = new SoundFile(this, "Menu.mp3");
  vent=new juego();
  vent.musica();
}

void draw() {
  vent.dibujar();
}

void keyPressed() {
  if ((key=='r') || (key=='R')) {
    vent.reciclar();
  }
}
