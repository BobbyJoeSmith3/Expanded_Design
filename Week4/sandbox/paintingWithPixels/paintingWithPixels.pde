PImage bison;

void setup() {
  size(634, 691);
  bison = loadImage("bison.jpg");
  background(0); 
}


void draw() {
  for (int i = 0; i < 100; i++) {
    float x = random(width);
    float y = random(height);
    color c = bison.get(int(x), int(y));
    fill(c);
    noStroke();
    ellipse(x, y, 10, 10);
  }
}