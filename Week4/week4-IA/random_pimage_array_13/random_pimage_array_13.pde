PImage [] imageArray = new PImage[5]; //5 places for images to be held

void setup() {
  size(600, 600);
  background(#E3AC87);
  noStroke();
  frameRate(10);
  imageMode(CENTER);
  //refer to the index number and loadImage
  imageArray[0] = loadImage("bellybutton.png");
  imageArray[1] = loadImage("bellybutton1.png");
  imageArray[2] = loadImage("bellybutton2.png");
  imageArray[3] = loadImage("bellybutton3.png");
  imageArray[4] = loadImage("bellybutton4.png");
}

void draw() {
  if (mousePressed){
  image(imageArray[(int)random(imageArray.length)], mouseX, mouseY);
  }
}

void mousePressed() {
  redraw();
}