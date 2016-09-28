// Example 8-1: A Car class and a Car object
// example derived from DAniel Shiffman, Learning Processing

//Notice we removed all of the global variables from the first example. 
//Instead of having separate variables for car color, car location, and
//car speed, we now have only one variable, a Car variable!
Car myCar; // Declare car object as a globle variable.

void setup() {
  size(480, 270);
  // Initialize car object in setup() by calling constructor.
  //object is made with the new operator.
  // if you forget to initialized, you will get a "NullPointerException" error 
  myCar = new Car();
}

void draw() {
  background(255);
  // Operate Car object in draw() by calling 
  // object methods using the dot syntax.
  //funtions in the object are called methods
  myCar.move(); 
  myCar.display();
}

//All classes must include four elements: name, data, constructor, and methods.
// Define a class name outside of setup and draw.
// pecified by “class WhateverNameYouChoose” Class names are traditionally 
//capitalized (to distinguish them from variable names, which traditionally are lowercase).
class Car { 
  // Data -  a collection of variables
  color c; 
  float xpos;
  float ypos;
  float xspeed;

  // A constructor -  a special function inside of a class that creates the 
  //instance of the object itself
  Car() { 
    c = color(175);
    xpos = width/2;
    ypos = height/2;
    xspeed = 1;
  }

  // Function.
  //we add functionality to our object by writing methods. 
  //These are done in the same way as we made functions last week, 
  //with a return type, name, arguments, and a body of code.
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