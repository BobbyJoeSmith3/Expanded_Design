float xSpeed, ySpeed;

void setup(){
 size(600, 600);
 background(255);
}

void draw() {
 stroke(0);
 xSpeed = abs(mouseX-pmouseX);
 ySpeed = abs(mouseY-pmouseY);
 ellipse(mouseX, mouseY, 30, 30);
 
 print("y speed:" + ySpeed + "\t");
 println("x speed:" + xSpeed);
}