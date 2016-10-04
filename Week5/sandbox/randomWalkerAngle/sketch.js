var w;

function setup() {
  createCanvas(800, 600);
  w = new Walker();
}

function draw() {
  background(15);
  w.update();
  w.display();
}


function Walker() {
  this.pos = createVector(width/2, height/2);
  this.vel = createVector(0, 0);
  this.acc = p5.Vector.fromAngle(0);
  this.acc.setMag(.2);
  
  this.update = function() {
    this.acc.rotate(random(TWO_PI));
    
    this.vel.add(this.acc);
    this.pos.add(this.vel);
  }
  
  this.display = function() {
    fill(255);
    ellipse(this.pos.x, this.pos.y, 30, 30);
  }
  
}