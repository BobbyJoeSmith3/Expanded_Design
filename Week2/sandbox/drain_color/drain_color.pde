float increment = 50;

void setup() {
  size(600,800);
  background(0);
  frameRate(10);
}

void draw() {
  increment += random(-2, 2);
  for(int x = 0; x <= width; x += increment) {
    for(int y = 0; y <= height; y += increment) {
      fill(random(255), random(255), random(255));
      if(mousePressed) {
        fill(dist(x, y, mouseX, mouseY));
      }
      rect(x, y, increment, increment); 
    }
  }
  
  println(increment);
}