float circlex;
float xspeed;

void setup() {
  size(360, 300);
  circlex = 0;
  xspeed = 3;
}

void draw() {
  background(0);
  
  circlex = circlex + xspeed;
  
  fill(255);
  ellipse(circlex, height/2, 35, 35);
  
  if ((circlex >= width) || (circlex <= 0)) {
    xspeed *= -1;
  }
  
  println(circlex);
}