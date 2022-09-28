class juego {
  notas n;
  ventanas mn;

  juego() {
    n= new notas(); 
    mn =new ventanas();
 
  }
  void menuimg() {
    mn.pantalla1();
  }
  void objetivos() {
    mn.pantalla3();
  }
  void creditos(){
    mn.pantalla4();
    
  }
  void iniciar() {
    mn.pantalla2();
    n.move();
    n.colision();
    mn.estados();
  }
  void reciclar() {
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
}
