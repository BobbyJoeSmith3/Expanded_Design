var particle;
var attractor;

function setup() {
  createCanvas(640, 320);
  particle = new Particle();
  attractor = new Attractor();
  
}

function draw() {
  background(51);
  
  var gravitationalPull = attractor.calculateAttraction(particle);
  particle.applyForce(gravitationalPull);
  
  particle.update();
  particle.display();
  
  attractor.display();
  
}