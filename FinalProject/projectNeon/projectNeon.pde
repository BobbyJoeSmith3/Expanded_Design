/* ========================================
   SECTION: IMPORTS
======================================== */

// Processing had trouble recognizing illustrator svgs,
// used geomerative library instead of PShape to process svg
import geomerative.*;

// Imports for AI_for_2D_Games a library of physics engines
import game2dai.entities.*;
import game2dai.entityshapes.ps.*;
import game2dai.maths.*;
import game2dai.*;
import game2dai.entityshapes.*;
import game2dai.fsm.*;
import game2dai.steering.*;
import game2dai.utils.*;
import game2dai.graph.*;

// Imports for Firmata to act as a communication protocol with microcontroller
import processing.serial.*;
import cc.arduino.*;
import org.firmata.*;

/* ========================================
   SECTION: GLOBAL VARIABLES
======================================== */

// Load and Display a Shape
RShape playerShip;

// All sketches need a global World and StopWatch variable
World world;
StopWatch sw;

// Moving entity
//MovingEntity mover0;

// Vehicle entities
Vehicle vehicle0;
Vector2D target = new Vector2D();

// Microcontroller
Arduino arduino;



/* ========================================
   SECTION: SETUP
======================================== */

void setup() {
  fullScreen(P2D);
  // Draws all geometry with smooth (anti-alliased) edges
  smooth();
  
  // Instantiate microcontroller
  // make sure the Baud rates match
  arduino = new Arduino(this, Arduino.list()[1], 115200);
  
  // VERY IMPORTANT: Allways initialize geomerative library before using
  RG.init(this);
  // Load graphic
  playerShip = RG.loadShape("player_ship.svg");
  playerShip = RG.centerIn(playerShip, g);
  
  // Specifies the part of the world that wil be displayed initially
  // not the size of the game world, and establishes 1:1 world unit pixel ratio
  world = new World(width, height);
  sw = new StopWatch();
  
  // Vector2D class used to represent all locs and dirs in game domain world
  // Create the vehicle
  vehicle0 = new Vehicle(
    new Vector2D(width/2, height/2),   // position
    50,                                // collision radius
    new Vector2D(100, 100),              // velocity
    100,                                // maximum speed
    new Vector2D(1, 1),                // heading
    1,                                 // mass
    180,                               // turning rate in radians per sec
    200                                // max force
  );
  
  // SAMPLE vehicle object
  // What does this vehicle look like
  PlayerShip view = new PlayerShip(this);
  // Show collision and movement hints
  view.showHints(Hints.HINT_COLLISION | Hints.HINT_HEADING | Hints.HINT_VELOCITY);
  // Add renderer to vehicle
  vehicle0.renderer(view);
  // Construct a boundary for object and have it bounce off of boundary
  Domain d = new Domain(0, 0, width, height);
  vehicle0.worldDomain(d, SBF.WRAP);
  //Add entity to game domain
  world.add(vehicle0);
  
  sw.reset(); // should always be last line in setup
}



/* ========================================
   SECTION: DRAW
======================================== */

void draw() { 
  
  // Time elapsed in seconds since method was called
  double elapsedTime = sw.getElapsedTime();
  target.set(mouseX, mouseY);
  vehicle0.AP().arriveOn(target);
  
  // Update game physics based on the elapsed time
  world.update(elapsedTime);
  // Clear display using background
  background(13);
  // Tell the world to draw itself
  world.draw(elapsedTime);
}