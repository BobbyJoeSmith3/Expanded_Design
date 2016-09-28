void setup() {
  size(600,800);
  //background(0);
}

//we have rewritten the background function,
//but this time we have access to every single pixel's x&y location.
//takes the pixel array and makes it 2-dimensional by 
//referencing the x and y of each pixel


//loadPixels();
//for(int x = 0; x < width; x++) {
//  for(int y = 0; y < height; y++) {
//    pixels[x+y*width] = color(0, 255, 0);
//  }
//}
//updatePixels();

//create green gradient
//loadPixels();
//for(int x = 0; x < width; x++) {
//  for(int y = 0; y < height; y++) {
//    pixels[x+y*width] = color(0, y/2, 0);
//  }
//}
//updatePixels();

//create green vertical gradient and blue horizontal gradient
//loadPixels();
//for(int x = 0; x < width; x++) {
//  for(int y = 0; y < height; y++) {
//    pixels[x+y*width] = color(0, y/2, x/2);
//  }
//}
//updatePixels();

//create green radial gradient from center
//loadPixels();
//for(int x = 0; x < width; x++) {
//  for(int y = 0; y < height; y++) {
//    float d = dist(x,y,width/2,height/2);
//    pixels[x+y*width] = color(0, d, 0);
//  }
//}
//updatePixels();

//have radial gradient follow mouse position
void draw() {
  background(0);
  loadPixels();
  for(int x = 0; x < width; x++) {
    for(int y = 0; y < height; y++) {
      float d = dist(x,y,mouseX,mouseY);
      pixels[x+y*width] = color(0, d, 0);
    }
  }
  updatePixels();
}