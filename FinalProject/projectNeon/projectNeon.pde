/* ========================================
   SECTION: IMPORTS
======================================== */

// Processing had trouble recognizing illustrator svgs,
// used geomerative library instead of PShape to process svg
import geomerative.*;

// Imports for AI_for_2D_Games
import game2dai.entities.*;
import game2dai.entityshapes.ps.*;
import game2dai.maths.*;
import game2dai.*;
import game2dai.entityshapes.*;
import game2dai.fsm.*;
import game2dai.steering.*;
import game2dai.utils.*;
import game2dai.graph.*;



/* ========================================
   SECTION: GLOBAL VARIABLES
======================================== */

// Load and Display a Shape
RShape playerShip;

// All sketches need a global World and StopWatch variable
World world;
StopWatch sw;




/* ========================================
   SECTION: SETUP
======================================== */

void setup() {
  fullScreen(P2D);
  // Draws all geometry with smooth (anti-alliased) edges
  smooth();
  
  // Specifies the part of the world that wil be displayed initially
  // not the size of the game world, and establishes 1:1 world unit pixel ratio
  world = new World(width, height);
  sw = new StopWatch();
  
  // VERY IMPORTANT: Allways initialize geomerative library before using
  RG.init(this);
  
  playerShip = RG.loadShape("player_ship.svg");
  playerShip = RG.centerIn(playerShip, g);
  
  sw.reset(); // should always be last line in setup
}



/* ========================================
   SECTION: DRAW
======================================== */

void draw() {  
  // Time elapsed in seconds since method was called
  double elapsedTime = sw.getElapsedTime();
  // Update game physics based on the elapsed time
  world.update(elapsedTime);
  // Clear display using background
  background(0);
  // Tell the world to draw itself
  world.draw(elapsedTime);
  
  translate(mouseX, mouseY);
  scale(0.1);
  RG.shape(playerShip);
}