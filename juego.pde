void venti(){
  float valaX, valaY;
  PImage venti;
  venti = loadImage ("venti.png");
  
  valaX= 600;
  valaY= 840;
  valaX+=0.8;
  valaY+=0.8;
  
  for (int i = 140; i < 800; i = i+20) {
  for (int j = 0; j < 800; j = j+20) {
    point(j, i);
  }
  }
 image(venti, mouseX, 700, 113, 134);
 
}
