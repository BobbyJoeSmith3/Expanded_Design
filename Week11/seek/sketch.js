var vehicle;

function setup() {
  createCanvas(640, 360);
  vehicle = new Vehicle(320, 180);
}

function draw() {
  background(51);
  
  //create target that the vehicle steers towards, set to mouse location
  var target = createVector(mouseX, mouseY);
  
  //make vehicle seek target
  vehicle.seek(target);
  
  vehicle.update();
  vehicle.display();
}