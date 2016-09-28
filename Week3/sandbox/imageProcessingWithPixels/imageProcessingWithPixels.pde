PImage bison;

void setup() {
  size(634,691);
  bison = loadImage("bison.jpg");
}

void draw() { 
  background(0);
  //image(bison, 0, 0);
  loadPixels();
  //alert processing you are loading bison pixels as well
  bison.loadPixels();
  for (int x = 0; x < width; x++) {
    for(int y = 0; y < height; y++) {
      int loc = x+y*width;
      
      //go to the bison image, give me the pixel from that location
      //take that pixel and put it onto the screen at the same location
      //repeat this for every single pixel
      //pixels[loc] = bison.pixels[loc];
      
      //instead of assigning color as a conglomorated integer
      //isolate rgb values
      float r = red(bison.pixels[loc]);
      float g = green(bison.pixels[loc]);
      float b = blue(bison.pixels[loc]);
      //pixels[loc] = color(r,g,b);
      
      //you can now manipulate the rgb values of the pixels from the picture
      //pixels[loc] = color(random(255),b,g);
      
      //you can isolate groups of pixels
      //if (x > 300) {
      //  pixels[loc] = color(g,b,r);
      //} else {
      //  pixels[loc] = color(random(255),b,r);
      //}
      
      //brightness is determined by value of rgb
      //float d = dist(mouseX, mouseY, x, y);
      //float factor = map(d, 0, 200, 2, 0);
      //pixels[loc] = color(r*factor, g*factor, b*factor);
      
      //threshold filter
      float bright = brightness(bison.pixels[loc]);
      if (bright < mouseX) {
        pixels[loc] = color(255);
      } else {
        pixels[loc] = color(0);
      }
    }
  }
  updatePixels();
}