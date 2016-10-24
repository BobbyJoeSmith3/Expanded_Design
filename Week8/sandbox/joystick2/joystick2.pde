import cc.arduino.*;
import org.firmata.*;
import processing.serial.*;


Serial myPort;
Arduino arduino;

float xPos;
float yPos;

Particle particle;
void setup() {
  size(640, 360);
  particle = new Particle();
  arduino = new Arduino(this, Arduino.list()[3], 57600);
  
  // List all the available serial ports
  printArray(Serial.list());
  
}

void draw() {
  background(51);
  float analogX = arduino.analogRead(0);
  float analogY = arduino.analogRead(1);
  xPos = map(analogX, 0, 1023, 0, width);
  yPos = map(analogY, 0, 1023, height, 0);
  particle.update();
  particle.display();

}

class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  // particle's maximum speed
  float topspeed;
  
  Particle () {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    topspeed = 5;
  }
  
  void update () {
    // compute a vector that points from location to mouse
    PVector mouse = new PVector(xPos, yPos);
    PVector acceleration = PVector.sub(mouse, location);
    // normalize by setting magnitude of acceleration
    acceleration.setMag(0.2);
    
    // velocity changes according to acceleration
    velocity.add(acceleration);
    // limit the velocity to topspeed
    velocity.limit(topspeed);
    // location changes by velocity
    location.add(velocity);
  }
  
  void display() {
    noStroke();
    fill(255);
    ellipse(location.x, location.y, 48, 48);
  }
}