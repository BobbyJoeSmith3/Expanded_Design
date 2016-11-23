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

//Load and Display a Shape
RShape playerShip;

void setup() {
  fullScreen(P2D);
  // Draws all geometry with smooth (anti-alliased) edges
  smooth();
  
  // VERY IMPORTANT: Allways initialize geomerative library before using
  // Initialize geomerative library
  RG.init(this);
  
  playerShip = RG.loadShape("player_ship.svg");
  playerShip = RG.centerIn(playerShip, g);
}

void draw() {
  background(0);
  translate(mouseX, mouseY);
  scale(0.1);
  RG.shape(playerShip);
}