function Vehicle(x, y, m) {
  this.pos = createVector(x, y);
  this.vel = createVector(0, 0);
  this.acc = createVector(0, 0);
  //maxspeed controls the magnitude of the Desired vector
  this.maxspeed = 5;
  //controls the handling of the vehicle
  this.maxforce = .5;
  
  this.applyForce = function(force) {
    // var f = force.copy();
    // f.div(this.mass);
    this.acc.add(force);
  }
  
  //receives a vector as a target
  this.seek = function(target) {
    // use steering formula Steering = Desired - Velocity
    // Desired is a vector that points from the vehicle all the way towards the target
    // We can calculate Desired by taking the target's vector minus the vehicles location
    var desired = p5.Vector.sub(target, this.pos);
    //determine desired magnitude of the desired vector
    desired.setMag(this.maxspeed);
    
    // now that we have the desired velocity and the vehicle's current velocity we can calculate the steering force
    var steering = p5.Vector.sub(desired, this.vel);
    // we want to limit, not setMag which would be continuous, of maximum force
    steering.limit(this.maxforce);
    
    this.applyForce(steering);
  }
  
  this.update = function() {
    this.vel.add(this.acc);
    //limit velocit to the maximum speed of vehicle
    this.vel.limit(this.maxspeed);
    this.pos.add(this.vel);
    this.acc.set(0, 0);
  }
  
  this.display = function() {
    fill(255, 150);
    stroke(255);
    ellipse(this.pos.x, this.pos.y, 48, 48);
  }
}

