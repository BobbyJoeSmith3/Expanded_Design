var img;
var imgMask;

function preload() {
  img = loadImage("assets/undoctored.jpg");
  imgMask = loadImage("assets/doctored.png");
}

function setup() {
  createCanvas(810, 1080);
  img.mask(imgMask);
  imageMode(CENTER);
}

function draw() {
  background(0, 102, 153)
  image(img, width/2, height/2);
  image(imgMask, mouseX, mouseY);
}