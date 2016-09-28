float x, y;
float spacing = 50;

void setup() {
  size (400, 300); 
}

void draw() {
  background(0);
  
  stroke(255);
  strokeWeight(2);
  
  //make the grid resize itself
  spacing = spacing + random(-2, 2);
  
  x=0;
  while (x < width) {
    line(x, 0, x, height);
    x += spacing;
  }
  
  y=0;
  while (y < height) {
    //try this pattern too, it's pretty cool!
    //line(0, y, width, 0);
    line(0, y, width, y);
    y += spacing;
  }
  
  println(spacing);
}