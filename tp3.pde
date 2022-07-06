float pantalla;
int x = 100;
int y = 260;
int w = 200;
int h = 300;
boolean boton;

void setup(){
  size( 400, 800 );
  background(149,219,206);
   

}
void draw(){
   pantalla1();
  if ((mouseX>x)&&(mouseX<x+w)&&(mouseY>y)&&(mouseY<y+h && mousePressed)) {
   background(149,219,206);
    venti();
    
  }
}
