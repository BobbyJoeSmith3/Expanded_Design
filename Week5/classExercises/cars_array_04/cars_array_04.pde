// Example 8-1: A Car class and a Car object
// example from DAniel Shiffman, Learning Processing

//array of 100 cars
Car[] cars = new Car[100]; // Declare car object as a globle variable.

void setup() {
  size(480, 270);
  // Initialize each car object in setup()using a for loop.
 for (int i = 0; i < cars.length; i++){
  cars[i] = new Car(color(i*2), 0, i*2, i/20.0); 
 }
}

void draw() {
  background(255);
  // run each car using a for loop
  for(int i = 0; i < cars.length; i++){
  cars[i].move(); 
  cars[i].display();
  }
}

//car class stays the same no matter how many cars we make
class Car { 
  color c; 
  float xpos;
  float ypos;
  float xspeed;

  // arguments for the car
  Car(color c_, float xpos_, float ypos_, float xspeed_) { 
    c = c_;
    xpos = xpos_;
    ypos = ypos_;
    xspeed = xspeed_;
  }

  void display() { 
    // The car is just a square
    rectMode(CENTER);
    stroke(0);
    fill(c);
    rect(xpos, ypos, 20, 10);
  }

  // Function.  
  void move() { 
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}