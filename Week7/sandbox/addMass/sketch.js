var particle;

function setup() {
  createCanvas(640, 360);
  particle = new Particle(width/2, height/2);
}

function draw() {
  background(51);
  
  var gravity = createVector(0, 0.2);
  var wind = createVector(0.2, 0);
  particle.applyForce(gravity);
  particle.applyForce(wind);
  
  particle.checkEdges();
  particle.update();
  particle.display();
  
}