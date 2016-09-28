// Drawing with Primitives
// Amanda Agricola (aagricola@mica.edu)
// Interactive Arts 1: Day 1

void setup(){
 size(600,600); // Size of window with the arguments: (width, height);
}

void draw(){
 //background wipes the screen clean each time the draw loop runs
 background(180); //fill the background with light gray
 noFill(); //this gives the shapes that follow this command no fill color - stroke only
 
 //this function draws a single point and takes 2 arguments: (x, y)
 point(300, 300); 
 
 // Ellipse function takes four arguments: (x, y, width, height). By default, it is positioned from its center point.
 ellipse(300, 300, 50,50); 
 
 // Triangle triangle(x1, y1, x2, y2, x3, y3)
triangle(300, 220, 220, 350, 380, 350);

// Rectangle function takes the same four arguments as ellipse(). By default, it is positioned from its top left corner.
rect(210, 210, 183, 155);
//you can specify CENTER mode if you want to for rectangles
/*rectMode(CENTER);
rect(300, 300, 200, 200);*/

// Line function draws a line between two sets of coordinates: (x1, y1, x2, y2)
line(210, 210, 300, 100);
line(300, 100, 393, 209); // these are funny numbers, i used ran using tweak to get them.

// This function draws a 4 sided polygon using 4 pairs of coordinates as arguments: (x1, y1, x2, y2, x3, y3, x4, y4)
  quad(322, 235, 348.3, 220, 377, 245, 347.3, 261);

  // Arc function creates a portion of an ellipse with these arguments: (x, y, width, height, start angle, stop angle). Angles are given in radians.
  arc(375, 59, 50, 45, -2, HALF_PI);

  // An extra argument changes the way the shape is drawn. See reference for options
  arc(227, 132, 60, 86, 0, HALF_PI, PIE);
 
}