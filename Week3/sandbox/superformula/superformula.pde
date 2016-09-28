void setup() {
  size(500, 500);
  
  noFill();
  stroke(255);
  strokeWeight(2);
}

void draw() {
  background(0);
  
  translate(width/2, height/2);
  
  //processing's beginshape method
  beginShape();
  
  //add some vertices by looping over various values of theta
  //cover one full circle, 
  //decreasing the increment increases resolution
  for (float theta = 0; theta <= 2 * PI; theta += 0.01) {
    //use mouseX and mouseY / 100.0 to see what different parameters do
    //divide by 100 to scale down changes
    float rad = r(theta,
      2, //a
      2, //b
      6, //m determines amount of relational symmetry
      1, //n1 rounds out the shape the higher the number
      mouseX / 100.0, //n2 determines shape of spikes on one side
      mouseY / 100.0  //n3 determines shape of spike on one side
    );
    //multiplying by 50 because func r returns in only 1px
    float x = rad * cos(theta) * 50;
    float y = rad * sin(theta) * 50;
    vertex(x, y);
  }
  
  endShape();
  
}


// function r
// code superformula into func r
float r(float theta, float a, float b, float m, float n1, float n2, float n3 ) { 
  return pow(pow(abs(cos((m * theta) / 4.0) / a), n2) + pow(abs(sin((m * theta) / 4.0) / b), n3), -1.0/n1);
}