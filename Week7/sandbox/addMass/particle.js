function Particle(xpos, ypos, particle_mass) {
  this.pos = createVector(xpos, ypos);
  this.vel = createVector(0, 0);
  this.acc = createVector(0, 0);
  // mass is scalar having only magnitude
  // whereas vectors have both magnitude and direction
  this.mass = particle_mass;
  
  // scale particle radius based on its mass
  this.radius = this.mass * 5;
  this.diameter = this.radius * 2;
  
  this.applyForce = function(force){
    /* force = mass * acc translates to acc = force if mass is equal to 1
     need to make a copy of force so that the original being passed in 
     isn't altered everytime applyForce is called 
    */
    var f = force.copy();
    f.div(this.mass);
    this.acc.add(f);
  }
  
  this.checkEdges = function() {
    if (this.pos.y + this.radius > height) {
      this.vel.y *= -1;
      this.pos.y = height - this.radius;
    }
    if (this.pos.y - this.radius < 0) {
      this.vel.y *= -1;
      this.pos.y = 0 + this.radius;
    }
    if (this.pos.x + this.radius > width) {
      this.vel.x *= -1;
      this.pos.x = width - this.radius;
    }
    if (this.pos.x - this.radius < 0) {
      this.vel.x *= -1;
      this.pos.x = 0 + this.radius;
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