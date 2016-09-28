// Changing Color and Attributes of Primitives
// Amanda Agricola (aagricola@mica.edu)
// Interactive Arts 1: Day 1

void setup(){
 size(600,600); // Size of window with the arguments: (width, height);
}

void draw(){
// Color can be set in one of three ways  
// Grayscale: A range from 0-255 (black to white)

// HEX: A hexadecimal value: #RRGGBB
 background(#FAB6CB); //fill the background with light gray
 noFill(); //this gives the shapes that follow this command no fill color - stroke only
 
  // RGB: Red, green, and blue values separated by commas
  noSmooth(); // Turn off smoothing for point to make it more visible
  stroke(227, 27, 27);
 point(300, 300); 
strokeWeight(10); //this function changes the weight of the stroke
smooth(); // Set smoothing back on for everything else
ellipse(300, 300, 50,50); 
 
 // Triangle triangle(x1, y1, x2, y2, x3, y3)
triangle(300, 220, 220, 350, 380, 350);

  // noStroke() is used to draw shapes without an outline
  noStroke();
// Alpha (opacity) of all 3 modes can be adjusted (0-255) by adding an additional argument
fill(100, 128); // 50% opacity
rect(210, 210, 183, 155);

strokeWeight(1); // Stroke is now 1px thick
stroke(#00FF00, 128);
line(210, 210, 300, 100);
line(300, 100, 393, 209); 

 quad(322, 235, 348.3, 220, 377, 245, 347.3, 261); //appears darker because it is layered twice with 
 
 fill(255, 150); //whit fill with opacity
  arc(375, 59, 50, 45, -2, HALF_PI);

 fill(255, 75); // Same color, less opacity
  arc(227, 132, 60, 86, 0, HALF_PI, PIE);
 
}