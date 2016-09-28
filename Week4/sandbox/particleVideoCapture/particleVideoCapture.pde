import processing.video.*;

Particle[] particles;

Capture video;

// want camera to read a lower resolution image for performance
// used when reading image to get values for particle color
// display at a high resolution, but capture (image) at a low resolution
int videoScale = 2;

void setup() {
  // make window size of display monitor
  //size(displayWidth, displayHeight);
  
  size(1280, 960);
  
  // print a string array of resolution possibilities
  printArray(Capture.list());
  // can pull string direction from string array into constructor
  //video = new Capture(this, Capture.list()[0]);
  
  video = new Capture(this, 640, 480, 30);
  video.start();
  
  particles = new Particle [300];
  for (int i = 0; i < particles.length; i++) {
    particles[i] = new Particle();
  }
  background(0);
}

//void captureEvent(Capture video) {
//  video.read(); 
//}

void mousePressed() {
  video.read();
}

void draw() {
  for (int i = 0; i < particles.length; i++) {
    particles[i].display();
    particles[i].move();
  }
}