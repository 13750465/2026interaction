// week01_3_painter_if_mousePressed_
void setup(){
  size(500, 500);
}
void draw(){
  if (mouseButton==LEFT) stroke(255, 0, 0);
  if (mouseButton==CENTER) stroke(0, 255, 0);
  if (mouseButton==RIGHT) stroke(0, 0, 255);
  if(mousePressed) line(mouseX, mouseY, pmouseX, pmouseY);
}
