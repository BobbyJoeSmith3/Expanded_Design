class Bubble {
   float x;
   float y;
   int yspeed = -2;
   //this is the constructor for the bubble class
   Bubble() {
     x = width/2;
     y = height;
   }
   
   void display() {
     ellipse(x, y, 64, 64);
   }
   
   void ascend() {
     y += yspeed;
   }
}