float w, h;


void setup() {
  size(600, 600);
  frameRate(120);
}

void draw() {
  background(255);
  fill(frameCount/2);
  
  rectMode(CENTER);
  rect(width/2, height/2, w, h);
  
  w++;
  if(w < 0 || w > width){
    w=0;
  }
  h++;
  
  if(h < 0 || h > height) {
    h=0;
  }
}