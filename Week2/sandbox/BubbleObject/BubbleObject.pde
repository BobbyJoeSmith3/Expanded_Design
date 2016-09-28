Bubble b;

void setup() {
  size(640, 360);
  //initialize bubble class
  b = new Bubble();
}

void draw() {
  background(255);
  b.ascend();
  b.display();
}