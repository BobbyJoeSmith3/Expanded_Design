var particle;

function setup() {
  createCanvas(640, 360);
  particle = new Particle();
}

function draw() {
  background(51);
  
  var gravity = createVector(0, 0.2);
  particle.applyForce(gravity);
  var wind = createVector(0.5, 0);
  particle.applyForce(wind);
  
  particle.checkEdges();
  particle.update();
  particle.display();
  
}