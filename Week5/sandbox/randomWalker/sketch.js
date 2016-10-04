var w;

function setup() {
  createCanvas(800, 600);
  w = new Walker();
}

function draw() {
  background(0);
  //update the position of the walker
  w.update();
  //draw the walker
  w.display();
}


function Walker() {
  this.pos = createVector(width/2, height/2);
  this.vel = createVector(0, 0);
  
  this.display = function() {
    fill(255);
    ellipse(this.pos.x, this.pos.y, 50, 50);
  }
  
  this.update = function() {
    //randomize the acceleration
    this.acc = createVector(random(-1,1), random(-1,1));
    //use a scalar on the magnitude of the vector to adjust severity of movement
    this.acc.mult(.25);
    //accelration changes the velocity
    this.vel.add(this.acc);
    //velocity changes the position
    this.pos.add(this.vel);
  }
}