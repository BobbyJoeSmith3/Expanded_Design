float yPosition = 300;
float xPosition = 300;

float xDirection = 1;
float yDirection = -1;

float xSpeed = 1;
float ySpeed = 2;

float radius = 25;

void setup() {
  size(600, 600);
  background(255);
}

void draw() {
  ellipse(xPosition, yPosition, radius*2, radius*2);
  
  if (xPosition > width - radius) {
    xDirection = -1;  
  }
  if (xPosition < radius) {
    xDirection = 1;
  }
  if (yPosition > height - radius) {
    yDirection = -1;
  }
  if (yPosition < radius) {
    yDirection = 1;
  }
  
  xPosition += xSpeed * xDirection;
  yPosition += ySpeed * yDirection;
}