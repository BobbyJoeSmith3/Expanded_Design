float r = 0;
float g = 0;
float b = 250;

void setup(){
  size(600,600);
}

void draw(){
  background(r,g,b);
  stroke(255);
  line(0, height/2, width, height/2);
  if(mouseY > height/2){
      b--;
  } else {
    b++;  
  }
  
  // constrain b
  b = constrain(b, 0, 255);
}