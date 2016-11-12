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
  // manually map analog inputs based on joystick neutral value ranges
  if (analogX < 525) {
    xPos = -1;
  } else if (525 < analogX && analogX < 528) {
    xPos = 0;
  } else {
    xPos = 1;
  }
  if (analogY < 514 ) {
    yPos = 1;
  } else if (514 < analogY && analogY < 517) {
    yPos = 0;
  } else {
    yPos = -1;
  }
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
    PVector acceleration = new PVector(xPos, yPos);
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