
//www.youtube.com/
void setup() {
  size(400,400);
  background(165,117,79);

}
void draw(){
 
float relleno = map(mouseX,0,width,0,115);
fill(79, relleno, 167);

stella();
rect(mouseX,0,400,400);

}
