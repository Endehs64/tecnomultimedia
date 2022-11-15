import processing.sound.*;
SoundFile menu, ingame, win, lose;
//aiff
juego vent;

void setup() {
  size( 400, 800 );
  
  //ingame = new SoundFile(this, "Ingame.aac");
  //win = new SoundFile(this, "Win.aac");
  lose = new SoundFile(this, "Lose.aiff");
  menu = new SoundFile(this, "Menu.mp3");
  
  vent=new juego();
 
}

void draw() {
  vent.dibujar();
 
}

void keyPressed() {
  if ((key=='r') || (key=='R')) {
    vent.reciclar();
    lose.stop();  
    menu.stop();
  }
}
