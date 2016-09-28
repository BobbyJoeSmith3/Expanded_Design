void setup() {
  size(700, 700);
  
  noFill();
  stroke(255);
  strokeWeight(2);
}

float t = 0;

float varA = 2.0;
float varB = 2.0;
float varM = 6.0;
float varN1 = 1.0;
float varN2 = 1.0;
float varN3 = 1.0;

void draw() {
  background(0);
  
  translate(width/2, height/2);
  
  
  //keycommands
  if (keyPressed) {
    if (key == 'A') {
         varA += 0.2;
         println("A: " + varA);
     } else if (key == 'a') {
         varA -= 0.2;
         println("A: " + varA);
     }
     
     if (key == 'B') {
         varB += 0.2;
         println("B: " + varB);
     } else if (key == 'b') {
         varB -= 0.2;
         println("B: " + varB);
     }
     
     if (key == 'M') {
         varM += 0.2;
         println("M: " + varM);
     } else if (key == 'm') {
         varM -= 0.2;
         println("M: " + varM);
     }
     
     if (key == 'J') {
         varN1 += 0.02;
         println("N1: " + varN1);
     } else if (key == 'j') {
         varN1 -= 0.02;
         println("N1: " + varN1);
     }
     
     if (key == 'K') {
         varN2 += 0.02;
         println("N2: " + varN2);
     } else if (key == 'k') {
         varN2 -= 0.02;
         println("N2: " + varN2);
     }
     
     if (key == 'L') {
         varN3 += 0.02;
         println("N3: " + varN3);
     } else if (key == 'l') {
         varN3 -= 0.02;
         println("N3: " + varN3);
     }

  }
  
  //processing's beginshape method
  beginShape();
  
  //add some vertices by looping over various values of theta
  //cover one full circle, 
  //decreasing the increment increases resolution
  for (float theta = 0; theta <= 2 * PI; theta += 0.01) {
    //use mouseX and mouseY / 100.0 to see what different parameters do
    //divide by 100 to scale down changes
    float rad = r(theta,
      varA, //a
      varB, //b
      varM, //m determines amount of relational symmetry
      varN1, //n1 rounds out the shape the higher the number
      sin(t) + varN2, //n2 determines shape of spikes on one side, use sin & cos waves to oscilate values
      cos(t) + varN3 //n3 determines shape of spike on other side
    );
    //multiplying by 50 because func r returns in only 1px
    float x = rad * cos(theta) * 50;
    float y = rad * sin(theta) * 50;
    vertex(x, y);
  }
  
  endShape();
  
  //increment t
  t += 0.1;
  
}


// function r
// code superformula into func r
float r(float theta, float a, float b, float m, float n1, float n2, float n3 ) { 
  return pow(pow(abs(cos((m * theta) / 4.0) / a), n2) + pow(abs(sin((m * theta) / 4.0) / b), n3), -1.0/n1);
}

void keyPressed() {
   if (key == 'a') {
     if (keyCode == UP) {
       varA++;
       println(varA);
     } else if (keyCode == DOWN) {
       varA--;
       println(varA);
     }
   }
}