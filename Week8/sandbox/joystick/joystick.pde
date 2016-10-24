import cc.arduino.*;
import org.firmata.*;
import processing.serial.*;


Serial myPort;
Arduino arduino;

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
  float xPos = map(analogX, 0, 1023, 0, width);
  float yPos = map(analogY, 0, 1023, 0, height);
  fill(38, 89, 240);
  ellipse(xPos, yPos, 20, 20);
  particle.update();
  particle.display();

}