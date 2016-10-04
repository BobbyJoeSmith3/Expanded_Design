var xoff = 0;
var xoff2 = 0;
var w;

function setup() {
  createCanvas(600,600);
  w = new Walker();
  background(15);
}

function draw() {
  w.update();
  w.checkEdges();
  w.checkVelocity();
  w.display();
  
  
}


function Walker() {
  this.pos = createVector(width/2, height/2);
  this.vel = createVector(0, 0);
  
  this.update = function() {
    this.acc = createVector(random(-1,1), random(-1,1));
    this.acc.setMag(.1);
    
    this.vel.add(this.acc);
    this.pos.add(this.vel);
  }
  
  this.display = function() {
    var circleWidth = noise(xoff) * 30;
    var circleHeight = noise(xoff2) * 30;
    
    xoff += 0.025;
    xoff2 += 0.015;
    
    fill(255);
    noStroke();
    ellipse(this.pos.x, this.pos.y, circleWidth, circleHeight);
  }
  
  this.checkEdges = function() {
    if (this.pos.x <= 0) {
      this.pos.x += width;
    }
    if (this.pos.x >= width) {
      this.pos.x -= width;
    }
    if (this.pos.y <= 0) {
      this.pos.y += height;
    }
    if (this.pos.y >= height) {
      this.pos.y -= height;
    }
  }
  
  this.checkVelocity = function() {
    if (this.vel.x <= -5 || this.vel.x >= 5) {
      this.vel.x *= -.25;
    }
    if (this.vel.y <= -5 || this.vel.y >= 5) {
      this.vel.y *= -.25;
    }
    console.log("x: " + this.vel.x + " y: " + this.vel.y);
  }
}