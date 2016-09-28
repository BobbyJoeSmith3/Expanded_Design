import org.openkinect.processing.*;

/* 
Turn depth image into a 3-dimensional representation using the depth image
*/

Kinect2 kinect2;

void setup() {
  // dimensions for depth image for kinect v2
  // adding P3D to get program to render something in 3D
  size(512, 424, P3D);
  kinect2 = new Kinect2(this);  
  // access feed to kinect's depth camera
  kinect2.initDepth();
  // initialize the kinect
  // can specify which device as parameter if multiple connected
  kinect2.initDevice();
}

void draw() {
  background(0); 
  
  // get depth image and assign it to variable img
  // can look at raw depth values 0 - 4500mm for kinnect v2/ 0 - 2048 kinect v1
  // or can get depth image
  PImage img = kinect2.getDepthImage();
  // draw depth img to screen
  // image(img, 0, 0);
  
  /*
  Most things we can do with the raw image data produced from the kinect
  has to do with iterating over every pixel to process or manipulate
  the data in meaningful ways. Nested loops allows us to loop through 
  every pixel on the grid.
  */
  
  // Make a low resolution grid by evaluating every 20 pixels and placing a color square
  int skip = 20;
  for (int x = 0; x < img.width; x++) {
    for (int y = 0; y < img.height; y++) {
      // find the index in a linear array  x + y * width
      int index = x + y * img.width;
      // brightness returns a single int value btwn 0-255
      float b = brightness(img.pixels[index]);
      // make z equal to brightness
      float z = map(b, 0, 255, 250, -250);
      // invert so closer objects are lighter in color
      fill(255-b);
      // adding push and pop matrix to display rect not by coordinate 
      // but rather along a translated 3-dimensional axis
      pushMatrix();
      // add third dimension
      translate(x, y, z);
      // instead of drawing rect at x and y, draw at (0, 0) and translate
      // allowing us to translate along the z axis as well
      rect(0, 0, skip/2, skip/2); 
      popMatrix();
    }
  }
}