// week01_6_mouseWheel_strokeWeight_circleSize
float circleSize = 5;
void setup() {
  size(500, 500);
  background(255);
}
void draw(){
  strokeWeight(circleSize);
  if(mousePressed) {
    if (mouseButton==LEFT) stroke(0);
    if (mouseButton==RIGHT) stroke(255);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
  noStroke();
  rect(0, 0, 100, 100);
  stroke(0);
  strokeWeight(circleSize);
  ellipse(50, 50, circleSize, circleSize);
}
void mouseWheel(MouseEvent e) {
  circleSize = circleSize - e.getCount();
}
