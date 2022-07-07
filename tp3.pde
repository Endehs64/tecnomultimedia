float pantalla;
int x = 100;
int y = 260;
int w = 200;
int h = 300;
PImage ins, bottle;
PFont intro;
int poX=400;
int valaX, valaY;
int[] botellas = new int [2];
int[] valores = new int [2];


void setup() {
  size( 400, 800 );
  background(149, 219, 206);
  pantalla=1;              //pantalla arranca en 1 apenas cargas el programa.

//carga imagenes y tipografia
  ins = loadImage("instrucciones.png");
  intro= createFont("Orbitron.ttf", 12);
bottle = loadImage ("bottle_00.png");
 
//Declarion de FOR
  for (int n = 0; n<valores.length; n++ ) {
    valores[n] = 0;
    botellas[n] = 0;
  }
//Declaracion FLOAT
  valaX = 400 ;
  valaY = 400 ;

}

void draw() {

  background(149, 219, 206);
 valaX += 600 ;
 valaY += 600 ;
    

  //pantallas
  if (pantalla==1) {            //si pantalla es 1, ejecuta la primera pantalla y el botón
    pantalla1();
    if ((mouseX>x)&&(mouseX<x+w)&&(mouseY>y)&&(mouseY<y+h && mousePressed)) {
      pantalla=2;        //al tocar el botón cambia pantalla a 2
    }
}
    if (pantalla==2) {          //si pantalla es 2, ejecuta el juego
      background(149, 219, 206);
      textFont(intro);
      text("Presiona [V] para", 260, 20);
      text("las instrucciones", 260, 40);
      image(ins, poX, poX);
      pantalla2();
    }
   
    //Declarion de FOR
 for (int n = 0; n<valores.length-1; n++ ) {
    valores[n] =  valores[n + 1];
    botellas[n] = botellas [n + 1];
  }
  valores[valores.length-1]= valaX;
  botellas[botellas.length-1]= valaY; 
   
   for (int n = 0; n<valores.length-1; n++ ) {
     image(bottle, random(-799,800), random(-799,800), 20, 20 );

} 
  } 

  void keyPressed() {
    if ((key=='v') || (key=='V')) {
      poX=400-poX;
    }
  }
