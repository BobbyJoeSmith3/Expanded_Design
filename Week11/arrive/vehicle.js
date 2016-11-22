function Vehicle(x, y, m) {
  this.pos = createVector(x, y);
  this.vel = createVector(0, 0);
  this.acc = createVector(0, 0);
  this.maxspeed = 8;
  this.maxforce = 0.7;
  
  this.r = 6;
  
  this.applyForce = function(force) {
    this.acc.add(force);
  }
  
  // Arrive
  this.arrive = function(target) {
    var desired = p5.Vector.sub(target, this.pos);
    
    // Arrive behavior
    var d = desired.mag();
    
    // if vehicle is within 100 pixels of target, slow down, otherwise go maxspeed
    if (d < 100) {
      var m = map(d, 0, 100, 0, this.maxspeed);
      desired.setMag(m);
    } else {
      desired.setMag(this.maxspeed);
    }
    
    // Steering behavior
    var steering = p5.Vector.sub(desired, this.vel);
    steering.limit(this.maxforce);
    
    this.applyForce(steering);
  }
  
  
  // Update
  this.update = function() {
    this.vel.add(this.acc);
    this.vel.limit(this.maxspeed);
    this.pos.add(this.vel);
    this.acc.set(0, 0);
  }
  
  // Display
  this.display = function() {
    // Calculate heading of vehicle
    var theta = this.vel.heading() + PI/2;
    
    // Aesthetic properties
    fill(127);
    stroke(200);
    strokeWeight(2);
    
    // Push/Pop Matrix for rotation translation
    push();
    translate(this.pos.x, this.pos.y);
    rotate(theta);
    
    // Create triangular shape
    beginShape();
    vertex(0, -this.r * 2);
    vertex(-this.r, this.r * 2);
    vertex(this.r, this.r * 2);
    endShape(CLOSE);
    pop();
    
  }
}