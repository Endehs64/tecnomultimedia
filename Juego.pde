class juego {
  float pantalla = 1;
  int x = 120, y= 420, w = 160, h = 100, yA= 560, hA = 60, yB= 650, hB = 100;
  notas n;
  pantallas mn;

  juego() {
    n= new notas(); 
    mn =new pantallas();
  }
  void menuimg() {
    mn.pantalla1();
      menu.play();
      noLoop();
  }
  void objetivos() {
    mn.pantalla3();
  }
  void creditos() {
    mn.pantalla4();
  }
  void iniciar() {
    //ingame.play();
    mn.pantalla2();
    n.move();
    n.colision();
    n.ganar();
    mn.perder();
  }
  void reciclar() {
    pantalla=1;
    x = 120;
    y= 420; 
    w = 160;
    h = 100; 
    yA= 560;
    hA = 60; 
    yB= 650; 
    hB = 100;
    mn.reiniciopan();
    n.reinicionotas();
  }

  void dibujar() {

    background(149, 219, 206);
    //========== pantallas ==========

    if (pantalla==1) {            //si pantalla es 1, ejecuta pantalla de inicio 
      vent.menuimg();
      if ((mouseX>x)&&(mouseX<x+w)&&(mouseY>y)&&(mouseY<y+h && mousePressed)) {
        pantalla=2;        //al tocar el botón cambia pantalla a 2
      }
      if ((mouseX> x)&&(mouseX<x+w)&&(mouseY>yA)&&(mouseY<yA+hA && mousePressed)) {
        pantalla=3;        //al tocar el botón cambia pantalla a 3
      }
      if ((mouseX> x)&&(mouseX<x+w)&&(mouseY>yB)&&(mouseY<yB+hB && mousePressed)) {
        pantalla=4;        //al tocar el botón cambia pantalla a 3
      }
    }
    if (pantalla==2) {          //si pantalla es 2, ejecuta el Juego
      vent.iniciar();
    } 
    if (pantalla==3) {          //si pantalla es 3, ejecuta Objetivos
      vent.objetivos();
    }
    if (pantalla==4) {          //si pantalla es 2, ejecuta  Creditos
      vent.creditos();
    }
  }
}
