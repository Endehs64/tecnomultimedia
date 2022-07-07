void pantalla2() {
 PImage venti;
  
//Carga
venti = loadImage ("venti.png");

image(venti, mouseX, 700, 113, 134);

 //Fondo Puntitos
  for (int i = 0; i < 800; i = i+20) {
    for (int j = 0; j < 800; j = j+20) {
      point(j, i);
}
}
}
