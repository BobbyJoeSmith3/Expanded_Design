var w;

function setup() {
  createCanvas(640, 400);
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
  this.acc = createVector(0, 0.1);
  
  this.display = function() {
    fill(255);
    ellipse(this.pos.x, this.pos.y, 50, 50);
  }
  
  this.update = function() {
    //accelration changes the velocity
    this.vel.add(this.acc);
    //velocity changes the position
    this.pos.add(this.vel);
  }
}