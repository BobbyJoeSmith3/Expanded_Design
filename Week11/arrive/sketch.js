var vehicle;

function setup() {
  createCanvas(640, 360);
  vehicle = new Vehicle(320,180);
}

function draw() {
  background(51);
  
  // Arrive at target
  var target = createVector(mouseX, mouseY);
  vehicle.arrive(target);
  
  // Update and display
  vehicle.update();
  vehicle.display();
  
}