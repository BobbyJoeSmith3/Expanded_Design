void setup() {
  size(640, 360);
  background(51);
}

void draw() {
  //background(51);
  star(random(width), random(height), random(255));
}

void star(float x, float y, float starColor) {
  fill(starColor);
  stroke(255);
  strokeWeight(2);
  beginShape();
  /* The original non-reusable star
  vertex(100,50);
  vertex(114, 80);
  vertex(147,85);
  vertex(123, 107);
  vertex(129, 140);
  vertex(100, 125);
  vertex(71, 140);
  vertex(77, 107);
  vertex(53, 85);
  vertex(86, 80);
  */
  vertex(x, y-50);
  vertex(x+14, y-20);
  vertex(x+47, y-15);
  vertex(x+23, y+7);
  vertex(x+29, y+40);
  vertex(x, y+25);
  vertex(x-29, y+40);
  vertex(x-23, y+7);
  vertex(x-47, y-15);
  vertex(x-14, y-20);
  endShape(CLOSE);
}