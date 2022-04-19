void setup () { 
  size(400, 400);
  background(112, 165, 219);
  stroke(225, 164, 64);
}
void draw() {
  
   //Letras
  strokeWeight(20);
  fill(183, 139, 100);
  line(160, 20, 160, 100);
  circle(184, 40, 40);
  circle(244, 80, 40);
  fill(225, 164, 64);
  line(300, 110, 300, 20);
  line(350, 110, 310, 64);
  line(300, 65, 350, 20);
  
  //Orejas
  fill(237, 184, 132);
  ellipse(270, 200, 66, 76);
  fill(229, 184, 132);
  ellipse(130, 200, 66, 76);
  fill(183, 139, 100);
  ellipse(130, 200, 50, 60);
  fill(183, 139, 100);
  ellipse(270, 200, 50, 60);
  
  //Cabeza y Mejillas
  fill(229, 184, 132);
  ellipse(200, 328, 210, 100);
  fill(229, 184, 132);
  circle(200, 280, 200);
  fill(254, 153, 137);
  ellipse(130, 315, 50, 30);
  fill(254, 153, 137);
  ellipse(270, 315, 50, 30);
  
  //Sombrero
  stroke(225, 164, 64);
  strokeWeight(10);
  arc(200, 170, 90, 70, PI, TWO_PI);
  noStroke();
  fill(229, 201, 65);
  ellipse(200, 200, 100, 40);
  noStroke();
  fill(242, 216, 78);
  arc(200, 200, 100, 120, PI, TWO_PI);
  noStroke();
  fill(209, 182, 57);
  rect(180, 140, 40, 60);
  
  //Ojos y Nariz
  noStroke();
  fill(43, 43, 41);
  circle(150, 280, 40);
  fill(43, 43, 41);
  circle(250, 280, 40);
  fill(43, 43, 41);
  triangle(180, 306, 220, 306, 200, 320);
  
  //Martillo
  noStroke();
  fill(251, 167, 0);
  square(14, 110, 20);
  square(34, 90, 20);
  square(54, 70, 20);
  square(74, 50, 20);
  square(94, 30, 20);
  square(74, 30, 20);
  square(94, 50, 20);
  square(94, 70, 20);
  square(114, 50, 20);
  square(54, 30, 20);
  square(74, 10, 20);
  
}
