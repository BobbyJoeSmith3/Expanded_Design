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
    PVector mouse = new PVector(mouseX, mouseY);
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
    ellipse(width/2, height/2, 48, 48);
  }
}