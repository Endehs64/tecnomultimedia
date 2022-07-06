void venti() {
 PImage venti;
//PImage [] bottle = new PImage[];
int bot = 0;
  
  //Carga
  venti = loadImage ("venti.png");
  
image(venti, mouseX, 700, 113, 134);
 
//todo relacionado a for
//for(int a=0; a< bottle.lenght; a++){
//bottle[a] = loadImage("bottle.png"); 


  //Fondo Puntitos
  for (int i = 0; i < 800; i = i+20) {
    for (int j = 0; j < 800; j = j+20) {
      point(j, i);
    }
}
}
