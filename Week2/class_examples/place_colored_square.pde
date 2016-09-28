void setup() {
  size(600, 600);
  background(255);
}

void draw() {}



void mousePressed() {
  stroke(0);
  fill(175, map(mouseY, 0, 600, 0, 255), map(mouseX, 0, 600, 0, 255));
  rectMode(CENTER);
  rect(mouseX, mouseY, 16, 16);
}

void keyPressed() {
  if (key == 'c'){ 
    background(255);
  }
}