var xoff = 0;

function setup() {
  createCanvas(600,600);
}

function draw() {
  background(15);
  var x = noise(xoff) * width;
  
  xoff += 0.05;
  
  fill(255);
  ellipse(x, height/2, 20, 20);
}