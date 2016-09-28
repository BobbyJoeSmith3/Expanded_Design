class GrumpyCat {
  
  float x;
  float y;
  float diameter;
  
  GrumpyCat(float tempX, float tempY, float tempD) {
    x = tempX;
    y = tempY;
    diameter = tempD;
  }
  
  void ascend() {
    y--;
    x = x + random(-2, 2);
  }
  
  void display() {
    imageMode(CENTER);
    image(grumpyCat, x, y, grumpyCat.width/2, grumpyCat.height/2);
  }
  
  void top() {
    if (y < diameter/2) {
      y = diameter/2;
    }    
  }  
}