//import the open kinect library

import org.openkinect.freenect.*;
import org.openkinect.processing.*;

// The kinect stuff is happening in another class (make sure the class file is included in your sketch file)
KinectTracker tracker;
Kinect kinect;

PImage [] imageArray = new PImage[5];

int trailLength = 100;
float[] xPos = new float[trailLength];
float[] yPos = new float[trailLength];
float r;

void setup() {
  size(600, 600);
  noStroke();
  fill(#00adad, 128);
  kinect = new Kinect(this);
  tracker = new KinectTracker();
  imageMode(CENTER);
  imageArray[0] = loadImage("bellybutton.png");
  imageArray[1] = loadImage("bellybutton1.png");
  imageArray[2] = loadImage("bellybutton2.png");
  imageArray[3] = loadImage("bellybutton3.png");
  imageArray[4] = loadImage("bellybutton4.png");
}

void draw() {
  background(0);
  
  // Run the tracking analysis
  tracker.track();
  // Show the image
 // tracker.display();
    
  // Let's draw the raw location
  PVector v1 = tracker.getPos();
  
  xPos[0] = v1.x;
  yPos[0] = v1.y;
  
if( mouseX > 0 && mouseY > 0){
 noCursor(); 
}
  // start from the end of the array -1 and subtract until 0
  for (int i = trailLength-1; i > 0; i--) {
    // This makes the trail get smaller
    float dia = trailLength-i;
    //imageArray.length is the same as saying random(0,4)
    // int before random converts from float to int - wraps random in int
    image(imageArray[(int)random(imageArray.length)], xPos[i], yPos[i], dia, dia);

    // Set the current number in the array to the one before it.
    xPos[i] = xPos[i-1];
    yPos[i] = yPos[i-1];
  }
}


void mousePressed(){
 saveFrame("export/collage-#####.png");
}