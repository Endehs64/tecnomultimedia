class juego {
  notas n, ns;
  ventanas mn, ms;

  juego() {

    n= new notas();
    ns= new notas();
    mn =new ventanas();
    ms =new ventanas();
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
    ns.colision();
    ms.estados();
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
    ms.reiniciopan();
    ns.reinicionotas();
  }
}
