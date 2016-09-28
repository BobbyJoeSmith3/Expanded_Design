//function definition
/*
- functions are a means of taking the parts of our program and separating them
into modular pieces, making the code easier to read and understand (making your
future self happier) as well as revise
- functions (calculates value), aka, procedures (performs task), methods (java),
or subroutines
- calling a function is same as writing line(), rect(), fill(). (these are
built-in functions) vs. user-defined functions
- modularity - functions break down larger programs into smaller parts - makes
code more manageable and readable
-reusability- allows us to code without having to retype everything
-3 parts: return type(void, int, float, boolean), function name(whatever you want),
 arguments (parameters or values , passed into the function (variable declaration))

returnType functionName(arguments){
 //code body of function
}
*/

void drawBlackCircle() {
  fill(0);
  ellipse(50,50,20,20);
}

// Calling a function
//after it has been declared (below the draw loop) it must be called in draw

void setup() {
 size(100,100);
}

void draw() {
  background(255);
  drawBlackCircle();
}

void drawBlackCircle() {
  fill(0);
  ellipse(50,50,20,20);
}