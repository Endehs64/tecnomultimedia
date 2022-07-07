float bottleX=0, bottleY=0;

void pantalla2() {
 PImage venti, bottle;
  
//Carga
venti = loadImage ("venti.png");
bottle = loadImage ("bottle_00.png");

image(venti, mouseX, 700, 113, 134);
 
   if(bottleY>height){
     bottleY=0;
     bottleX=random(0,width);
   }else{
     bottleY+=5;
   }
   image(bottle, bottleX, bottleY, 20, 20 );
   
   
 //Fondo Puntitos
  for (int i = 0; i < 800; i = i+20) {
    for (int j = 0; j < 800; j = j+20) {
      point(j, i);
}
}
}
