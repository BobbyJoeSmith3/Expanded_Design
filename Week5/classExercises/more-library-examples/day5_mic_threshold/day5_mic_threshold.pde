// Sound threshold 
//derived from Daniel Shiffman

import processing.sound.*;

AudioIn input;
Amplitude analyzer;

void setup() {
  size(600, 600);
  background(255);

  // Start listening to the microphone
  // Create an Audio input and grab the 1st channel
  input = new AudioIn(this, 0);

  // start the Audio Input
  input.start();

  // create a new Amplitude analyzer
  analyzer = new Amplitude(this);

  // Patch the input to an volume analyzer
  analyzer.input(input);
}

void draw() {
  // Get the overall volume (between 0 and 1.0)
  float volume = analyzer.analyze();

  // If the volume is greater than 0.5 a rectangle is drawn at a random location in the window. 
  // The louder the volume, the larger the rectangle.
  float threshold = 0.1;
  if (volume > threshold) {
    stroke(0);
    fill(random(255), random(255), random(255), random(200));
    rect(random(40, width), random(height), 20, 20);
  }
}