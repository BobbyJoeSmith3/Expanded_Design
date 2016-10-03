var w;

function setup() {
  createCanvas(640, 400);
  w = new Walker();
}

function draw() {
  background(0);
  w.walk();
  w.display();
}


function Walker() {
  this.x = width/2;
  this.y = height/2;
  
  this.display = function() {
    fill(255);
    ellipse(this.x, this.y, 50, 50);
  }
  
  this.walk = function() {
    this.x += random(-5,5);
    this.y += random(-5,5);
  }
}