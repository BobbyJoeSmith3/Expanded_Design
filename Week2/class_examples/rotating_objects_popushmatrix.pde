float angle1 = 0;
float roatSpeed1 = .125;
float angle2 = 00;
float roatSpeed2 = .025;

void setup(){
  size(600,600);
}

void draw(){
  background(255);
  ellipse(width/2, height/2, 50, 50);
  // constrain clickable area
  if(mouseX>200 && mouseX<400 && mouseY>200 && mouseY<400 && mousePressed) {
    pushMatrix();
      translate(300, 300);
      rotate(angle1);
      // set in reference to the point specified in translate (300, 300)
      rect(30, 30, 100, 100);
    popMatrix();
    
    angle1 += roatSpeed1;
  }
  
  pushMatrix();
    translate(300, 300);
    rotate(angle2);
    ellipse(200, 0, 50, 50);
  popMatrix();
  angle2 -= roatSpeed2;
}

//saves what's on the canvas
void keyPressed(){
  if (key == 's' || key == 'S'){
    saveFrame("export/drawing-####.png");
  }
}