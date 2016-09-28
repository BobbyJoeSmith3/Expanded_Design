PImage grumpyCat;

GrumpyCat gc0;
GrumpyCat[] gc = new GrumpyCat[3];
void setup() {
  size(640, 360);
  grumpyCat = loadImage("grumpyCat0.png");
  gc0 = new GrumpyCat(200, 300, 128);
  for (int i =0 ; i < gc.length; i++) {
    gc[i] = new GrumpyCat(100 + i*100, 300, random(32, 72));
  }
}


void draw() {
  background(0);
  for (int i =0; i < gc.length; i++) {
    gc[i].ascend();
    gc[i].display();
    gc[i].top();
  }
}