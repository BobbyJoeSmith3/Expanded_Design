
void setup() {
  size(600,800);
  //background(255);
}

//for (int x = 0; x < width; x++) {
//  set(x, 400, color(255, 0, 0));
//}

//indicate to processing to load pixels into memory so that you can access them
//set command does this for us automatically
//loadPixels();
//pixels[9] = color(255, 0, 0);
////tell processing to update display accordingly
//updatePixels();
void draw() {
  loadPixels();
  for(int i = 0; i < pixels.length; i++) {
    pixels[i] = color(random(255), random(255), random(255));
  }
  updatePixels();
}