
public class PlayerShip extends PicturePS {
  // Constructor must have PApplet param
  public PlayerShip(PApplet app) {
    // super(app) must be first line of constructor
    super(app);
  } // All params must be present in method header statement of draw
  public void draw(BaseEntity owner,
      float posX, float posY,
      float velX, float velY,
      float headX, float headY, float etime)
  {
    // Calculate the angle the entity is facing
    float angle = PApplet.atan2(headY, headX);
    
    // Can remove next 4 lines if never want to show hints
    if (hints != 0) {
      Hints.hintFlags = hints;
      Hints.draw(app, owner, velX, velY, headX, headY);
    }
    
    // Cast owner to the actual class used
    Vehicle entity = (Vehicle) owner;
    
    pushStyle();
    pushMatrix();
    translate(posX, posY);
    rotate(angle - 102.1);
    
    // Drawing code goes here
    scale(0.1);
    RG.shape(playerShip);
    
    // End of drwing code
    popMatrix();
    popStyle();
  }
}