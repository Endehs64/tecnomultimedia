float valaX, valaY, gluX, gluY, posX, posY, tamX, tamY, velX, velY, awaX, awaY, ziX, ziY, mrkX, mrkY, agX, agY, dhX;
float dhY, hX, hY, ozX, ozY, khX, khY, snX, snY, pokX; 
PFont FMine;
PFont FMineMulti;
PImage NL2, DW, MK, Pok;
int poX=600;

//------------------------------------------------------------------------------------------------
void setup() {

  size(600, 400);

  //Image

  NL2 = loadImage("Norden_Logo_2.png");
  DW = loadImage("Dirt_background_JE2.jpg");
  MK= loadImage ("Morok2.png");
  Pok= loadImage ("pok.png");

  //Declaraciones
  pokX = random (20, 40);
  valaX= 600;
  valaY= 640;
  gluX=540;
  gluY=670;
  posX = 700;
  posY = 780;
  tamX = 860;
  tamY = 940;
  velX= 1020;
  velY= 1100;
  awaX= 1180;
  awaY=1260;
  ziX=1340;
  ziY=1420;
  mrkX=1500;
  
  mrkY=1680;
  
  agX=2080;
  agY=2120;
  dhX=2160;
  
  dhY=2210;
  hX=2260;
  hY=2310;
  ozX=2360;
  ozY=2410;
  khX=2460;
  khY=2510;
  snX=2560;
  snY=3010;
  //Texto

  textAlign(CENTER);
  FMine = createFont("Minecrafter.Reg.ttf", 40);
  FMineMulti = createFont ("MinecraftChat.ttf", 18);


  //------------------------------------------------------------------------------------------------
}
void draw() {
  background(0);

  imageMode(CENTER);
  image(DW, 400, 200);
  imageMode(CORNER);
  image(Pok, mouseX, mouseY, pokX, pokX );
if (pokX<20){
  pokX=40;
}
  //Declaraciones

  valaX-=0.8;
  valaY-=0.8;
  gluX-=0.8;
  gluY-=0.8;
  posX-=0.8;
  posY-=0.8;
  tamX-=0.8;
  tamY-=0.8;
  velX-=0.8;
  velY-=0.8;
  awaX-=0.8;
  awaY-= 0.8;
  ziX-= 0.8;
  ziY-= 0.8;
  mrkX-=0.8;
  
  mrkY-=0.8;
  agX-=0.8;
  agY-=0.8;
  dhX-=0.8;
  
  dhY-=0.8;
  hX-=0.8;
  hY-=0.8;
  ozX-=0.8;
  ozY-=0.8;
  khX-=0.8;
  khY-=0.8;
  snX-=0.8;
  snY-=0.8;

  imageMode(CORNER);
  image(NL2, width-450, gluX);

  fill(255);
  textFont(FMine);
  text("Norden", width-240, valaX);
  text("Peaks", width-260, valaY);

  textSize(20);
  text("Java Edition", width-295, gluY);

  textFont(FMineMulti);
  fill(251, 167, 0);
  text("Castillo de New WaterFront - Primera aparicion", width-390, posY);
  fill(0, 153, 153);
  text("Deben de buscar la manera de detener el caos que los asecha.", width-300, tamX);
  fill(0, 102, 204);
  text("Pero como haremos eso? No tenemos informacion de", width-340, tamY);
  text("la Brecha o el Espejo.", width-480, velX);
  fill(255, 255, 102);
  text("Exacto. Si mandamos exploradores aquel lugar,", width-364, velY);
  text("no sabremos si volveran con vida. ", width-422, awaX);
  fill(0, 153, 153);
  text("Comprendo pero no estan solos, recuerden que es algo", width-338, awaY);
  text("que compenten a todos los reinos. Se podran salir adel- ...", width-330, ziX);
  fill(251, 167, 0);
  text("*Un destello hizo perder la mermoria a todos los prensentes*", width-300, ziY);
  fill(153, 255, 255);
  text("[press T] para ver cuanto te afecto. ", width-300, mrkX);
  imageMode(CORNERS);
  image(MK, poX, 0, 600, 400);
  fill(218, 66, 255);
  textSize(30);
  text("Creias que podrias escapar de mi?", width-300, mrkY);
  textSize(18);
  text("============", width-300, agX);
  text("Norden Team", width-300, agY);
  text("============", width-300, dhX);
  text("Creador de Norden Peaks", width-390, dhY);
  text("Omarex_", width-330, hX);
  text("Admins y Moderadores", width-410, hY);
  text("Oniro_, AyatoJoestar, Kenobi48", width-320,ozX);
  text("AaronMagna, Saohx, Kairitos",width-320,ozY);
  text("Disenadores", width-450, khX);
  text("Omarex_, Biscotti, AyatoJoestar,", width-320,khY);
  text("AaronMagna, Endehs", width-330,snX);
  fill(251, 167, 0);
  textSize(30);
  text("¡Despierta Pok!", width-330,snY);
}

void keyPressed() {
  if (key=='t') {
    poX=poX-600;
  }
}
