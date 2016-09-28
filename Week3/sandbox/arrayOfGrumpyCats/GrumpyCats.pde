class GrumpyCats {
 float x, y, w, h;
 
 //store a reference to the object's own image
 PImage img;
 
 //overload the constructor
 //x, y
 GrumpyCats(PImage tempImg, float tempX, float tempY) {
    x = tempX;
    y = tempY;
    //have the object get it's own image in the constructor
    img = tempImg;
 }
 
 //x, y, width, height
 GrumpyCats(PImage tempImg, float tempX, float tempY, float tempW, float tempH) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    img = tempImg;
 }
 
 void ascend() {
   //cause object to ascend
   y--;
   //have the object take a random linear path as it ascends
   x = x + random(-5, 5);
 }
 
 void display() {
    imageMode(CENTER);
    image(img, x, y, img.width/2, img.height/2);
 }
 
 void top() {
   //get grumpy cats to stop ascending before bottom of image revealed
   if (y < height - img.height/4) {
     y = height - img.height/4;
   }
 }
  
  
}