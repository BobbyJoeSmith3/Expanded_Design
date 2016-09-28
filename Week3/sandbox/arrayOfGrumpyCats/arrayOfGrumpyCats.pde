// declare an array of PImages and specify the size of the array
PImage[] grumpyCats = new PImage[3];

//an array of GrumpyCat objects
int numCats = 5;
GrumpyCats[] gc = new GrumpyCats[numCats];

void setup() {
  size(1240,800, P2D);
  for(int i = 0; i < grumpyCats.length; i++) {
    grumpyCats[i] = loadImage("grumpyCat" + i + ".png"); 
  }
  for(int i = 0; i < gc.length; i++) {
    int index = int(random(0, grumpyCats.length));
    gc[i] = new GrumpyCats(grumpyCats[index], ((width/numCats)*i)+50, height);
  }
}

void draw() {
  background(0);
  for(int i = 0; i < gc.length; i++) {
    gc[i].ascend();
    gc[i].display();
    gc[i].top();
  }
}