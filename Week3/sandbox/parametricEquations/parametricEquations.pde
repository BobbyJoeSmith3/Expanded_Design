//examples of parametric equations that plot x and y based on an equasion
// x = 5t
// y = 3t + 3

float t;

int numLines = 10;

void setup() {
  //background(20);
  size(500, 500);
}

void draw() {
  //to prevent overlap, redraw background
  background(20);
  
  stroke(255);
  strokeWeight(5);
  //move point towards center
  translate(width/2, height/2);
  //point(x(t), y(t));
  
  //draw a line between the two parametric equations
  //use forloop to control number of lines and create trailing effect
  for(int i = 0; i < numLines; i++) {
    line(x1(t + i), y1(t + i), x2(t + i), y2(t + i));
  }
  //you can control the speed of the wave by adjusting t
  t += .75;
}

// sin waves, coefficient adjusts frequency of the wave
// the higher the frequency, pair with a lower amplitude
float x1 (float t) {
  return (sin(t / 10) * 100) + (sin(t / 5) * 20);
}

float y1 (float t) {
  
  return cos(t/10) * 100;
}


float x2 (float t) {
  return (sin(t / 10) * 200) + (sin(t) * 2);
}

float y2 (float t) {
  return (cos(t/20) * 200) + (cos(t /12) * 20);
}