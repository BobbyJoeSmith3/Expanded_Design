var w;

function setup() {
  createCanvas(300, 300);
  w = new Walker();
}

function draw() {
  background(25);
  w.update();
  w.display();
  
}


function Walker() {
  this.pos = createVector(width/2, height/2);
  this.vel = createVector(0, 0);
  
  this.update = function() {
    //calculate acceleration based on mouse position
    var mouse = createVector(mouseX, mouseY);
    this.acc = p5.Vector.sub(mouse, this.pos);
    //set the magnitude of each vector to 1
    // this.acc.normalize();
    // this.acc.div(5);
    this.acc.setMag(0.15);
    
    //update velocity and position
    this.vel.add(this.acc);
    this.pos.add(this.vel);
  }
  
  this.display = function() {
    fill(255);
    ellipse(this.pos.x, this.pos.y, 30, 30);
  }
  
}