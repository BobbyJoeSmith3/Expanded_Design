import org.openkinect.processing.*;

// kinect library object
Kinect2 kinect2;

//angle for rotation
float a = 0;

void setup() {
  size(800, 600, P3D);
  kinect2 = new Kinect2(this);
  kinect2.initDepth();
  kinect2.initDevice();
}

void draw() {
  background(0);
  
  // translate and rotate
  pushMatrix();
  translate(width/2, height/2, -2250);
  rotateY(a);
  
  // calculate and draw every 2nd pixel
  int skip = 4;
  
  // get the raw depth as array of integers
  int[] depth = kinect2.getRawDepth();
  
  stroke(255);
  strokeWeight(2);
  beginShape(POINTS);
  for (int x = 0; x < kinect2.depthWidth; x += skip) {
    for (int y = 0; y < kinect2.depthHeight; y += skip) {
      int offset = x + y * kinect2.depthWidth;
      int d = depth[offset];
      // calculate the x, y, z camera position based on the depth information
      PVector point = depthToPointCloudPos(x, y, d);
      
      // draw a point
      vertex(point.x, point.y, point.z);
    }
  }


  endShape();
  
  popMatrix();
  
  
  fill(255);
  text(frameRate, 50, 50);
  
  // rotate
  a += 0.0015;
}

// calculate the xyz camera position based on the depth data
PVector depthToPointCloudPos(int x, int y, float depthValue) {
  PVector point = new PVector();
  point.z = (depthValue); // convert from mm to meters
  point.x = (x - CameraParams.cx) * point.z / CameraParams.fx;
  point.y = (y - CameraParams.cy) * point.z / CameraParams.fy;
  return point;
}