//controlP5.* is a library (install: sketch >> import library >> add library
// it allows you to add custom interfaces to your sketches
// if this doesn't make sense to you now, don't worry; we will look at it in class later as well

import controlP5.*;

ControlP5 cp5;
int sliderScale = 50;
Slider abc;

int rotatingObject = 1;

float diameter = sliderScale;
float angle;
float rotationSpeed = -1;

PImage peach;

void setup() {
  size(1280, 800);
  background(255);
  cp5 = new ControlP5(this);

  // add a horizontal sliders, the value of this slider will be linked
  // to variable 'sliderValue' 
  cp5.addSlider("sliderScale")
    .setPosition(100, 50) //position of slider on screen
    .setRange(0, 450)   //range of numbers it outputs
    ;

  cp5.addSlider("sliderOpacity")
    .setPosition(275, 50)
    .setRange(0, 255)
    ;

  peach = loadImage("peach.png"); 
  imageMode(CENTER);
}

void draw(){
 if (key == '1') {
  float s1 = cp5.getController("sliderScale").getValue();
  float s2 = cp5.getController("sliderOpacity").getValue();
  
  pushMatrix();
  //translate(mouseX, mouseY);
  if (mousePressed == true) {
    translate(mouseX, mouseY);
    rotate(radians(angle) );
    tint(#FFFFFF, s2); 
    image(peach, 10, 10, s1, s1);
  }
  else {
    noFill();
    noStroke();
  }
  popMatrix();
  angle += rotationSpeed;
}
//you can add more images and key options by adding more else if {} statements
}