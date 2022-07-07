void pantalla2() {
 PImage venti;
  
//Carga
venti = loadImage ("venti.png");

image(venti, mouseX, 700, 113, 134);
 
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
 //Fondo Puntitos
  for (int i = 0; i < 800; i = i+20) {
    for (int j = 0; j < 800; j = j+20) {
      point(j, i);
}
}
}
