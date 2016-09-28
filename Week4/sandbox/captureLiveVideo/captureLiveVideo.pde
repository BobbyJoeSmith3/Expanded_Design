import processing.video.*;

Capture video;



void setup() {
  size(1000, 800);
  // this, width, height, framerate (optional)
  video = new Capture(this, 640, 480, 30);
  // tell video to begin
  video.start();
}

void draw() {
  background(0); 
  tint(255, map(mouseX, 0, width, 0, 255), map(mouseY, 0, height, 0, 255));
  image(video, 0, 0, mouseX, mouseY);
  
  // tell camera to get the freshest pixels from the camera possible at this moment
  // read the current image the camera is seeing
  // no reason to read from the camera everytime through draw
  // video.read();
  
  // instead, only read if there is a new image available
  // draw is running at 60 frames per second
  // camera probably running at 30 fps
  //if (video.available()) {
  //  video.read();
  //}
}

// instead of reading from draw, we can create a capture event function
// the event is triggered by the camera everytime there is a new frame available
void captureEvent(Capture video) {
  //video.read();
}

// this will cause the camera to read only when triggered through a mousePressed event
void mousePressed() {
  video.read();
}