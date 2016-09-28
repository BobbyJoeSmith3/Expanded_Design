float x = 0;

void setup() {
  size(400, 300);
}

void draw() {
  background(0);
  
  // have to make x = 0 each time through draw to see every iteration
  x = 0;
  while (x < width) {
    // to prevent an infinite loop if x becomes 0
    // since mouseX is updated only once per cycle in draw
    if (mouseX < 1) {
      x = x + 1;
    } else {
      x = x + mouseX;
    }
    fill(101);
    stroke(255);
    ellipse(x, 150, 16, 16);
  }
}