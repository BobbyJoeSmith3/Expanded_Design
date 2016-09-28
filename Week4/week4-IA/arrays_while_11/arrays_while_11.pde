// Storing data in and retrieving data from arrays with a for loop.

// This is an empty array which can hold 3 floats
float[] xPositions = new float[3];

// Counter variable
int i;

void setup() {
  size (600, 600);

  xPositions[0] = 100;
  xPositions[1] = 300;
  xPositions[2] = 500;
}

void draw() {
  background(0);

  // Using a for loop here allows us to do everything between {} while the counter (i) is less than the length of the colors array.
  while (i < xPositions.length) {
    // To iterate through each value in the array use [i]
    ellipse(xPositions[i], height/2, 200, 200);
    i++; 
  }
  
  i = 0; // reset counter to run while again next loop
}