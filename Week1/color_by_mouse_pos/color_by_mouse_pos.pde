//All the code that happens once at the start
void setup() {
  size(1000, 750);
  background(#000000);
}

//Loops continuously
void draw() {
  
  //change color of stroke and fill based on position of mouse
  //x,y,w,h
  stroke(mouseX/4, 255, 255);
  fill(0, mouseY/3, mouseY/2);
  ellipse(mouseX, mouseY, 100, 100);
  //encapsulate stroke and fill for this shape
  noStroke();
  noFill();
  
  //change color of stroke and filled based on position of mouse
  //x,y,w,h
  stroke(255, mouseX/5, mouseY);
  fill(mouseY/3, 100, mouseY/3);
  //multiply X by 1.25 and Y by .75 to proportion for screen size
  rect(mouseY*1.25, mouseX*.75, 200, 200);
  noStroke();
  noFill();
  

}