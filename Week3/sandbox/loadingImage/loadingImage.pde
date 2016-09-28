PImage typography;

void setup() {
  size(600, 400);
  typography = loadImage("typography.png");
  
}

void draw() {
  background(0);
  tint(255, map(mouseY,0,height,0,255), 90);
  image(typography,0,0,600,400);
}