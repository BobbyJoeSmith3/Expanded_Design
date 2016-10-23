// create a particle class
  // particle has a class that draws a shape on screen
  // particle has a class that checks for change of position
  // particle maps analog data to change in current position
  // particle updates position on screen
  
// read data from serial monitor
Particle particle;
void setup() {
  size(640, 360);
  particle = new Particle();
}

void draw() {
  background(51);
  particle.display();

}