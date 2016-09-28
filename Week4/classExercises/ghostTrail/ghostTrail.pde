int trailLength = 100;
float[] xPos = new float[trailLength];
float[] yPos = new float[trailLength];

void setup() {
  size(600, 600);
  noStroke();
  //teal with opacity
  fill(#00adad, 128);
}

void draw() {
  background(0);
  
  //will always have an elipse wherever the mouse is
  xPos[0] = mouseX;
  yPos[0] = mouseY;
  
  for(int i = trailLength -1; i>0; i--) {
    float d = trailLength - i;
    ellipse(xPos[i], yPos[i], d, d);
    xPos[i] = xPos[i - 1];
    yPos[i] = yPos[i - 1];
  }
}