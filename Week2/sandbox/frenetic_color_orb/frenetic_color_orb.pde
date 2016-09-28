float circlex, circley;
float xspeed;

void setup() {
  size(360, 300);
  xspeed = 3;
}

void draw() {
  background(0);
  
  frameRate(30);
  
  circlex = random(120, 160);
  circley = random(130, 160);
  
  fill(random(255), random(255), random(255));
  ellipse(circlex, circley, random(15,35), random(15,35));
  
  //if ((circlex >= width) || (circlex <= 0)) {
  //  xspeed *= -1;
  //}
  
  println(circlex);
}