PImage bison;

void setup() {
  size(634, 691);
  bison = loadImage("bison.jpg");
}


void draw() {
  loadPixels();
  bison.loadPixels();
  for (int x = 0; x < width - 1; x++) {
    for (int y = 0; y < height; y++) {
      int loc1 = x+y*width;
      int loc2 = (x+1)+y*width;
      float b1 = brightness(bison.pixels[loc1]);
      float b2 = brightness(bison.pixels[loc2]);
      
      float diff = abs(b1-b2);
      if (diff > 20) {
        pixels[loc1] = color(0);
      } else { 
        pixels[loc1] = color(255);
      }
      //pixels[loc1] = color(diff);
    }
  }
  updatePixels();
}