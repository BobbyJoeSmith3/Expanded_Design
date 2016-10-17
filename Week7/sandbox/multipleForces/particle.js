function Particle() {
  this.pos = createVector(width/2, height/2);
  this.vel = createVector(0, 0);
  this.acc = createVector(0, 0);
  this.radius = 24;
  this.diameter = this.radius * 2;
  
  this.applyForce = function(force){
    //force = mass * acc translates to acc = force if mass is equal to 1
    this.acc.add(force);
  }
  
  this.checkEdges = function() {
    if (this.pos.y + this.radius > height) {
      this.vel.y *= -1;
      this.pos.y = height - this.radius;
    }
  }
  
  this.update = function() {
    this.vel.add(this.acc);
    this.pos.add(this.vel);
    
    // reset accelaration back to 0 so it doesn't compound with each frame
    this.acc.set(0, 0);
  }
  
  this.display = function() {
    fill(255);
    ellipse(this.pos.x, this.pos.y, this.diameter, this.diameter);
  }
}