//example from Sam Sheffield

int trailLength = 100;
float[] xPos = new float[trailLength];
float[] yPos = new float[trailLength];
float r;

void setup() {
  size(600, 600);
  noStroke();
  fill(#00adad, 128);
  
}

void draw() {
  background(0);
  //there is always one ellipse at mouseX and mouseY
  xPos[0] = mouseX;
  yPos[0] = mouseY;

  // start from the end of the array -1 and subtract until 0
  for (int i = trailLength-1; i > 0; i--) {
    // This makes the trail get smaller - mantianing same position minus one
    float dia = trailLength-i;
    ellipse(xPos[i], yPos[i], dia, dia);
    println(xPos[i]);
    println(dia);

    // Set the current number in the array to the one before it.
    xPos[i] = xPos[i-1];
    yPos[i] = yPos[i-1];
  }
}