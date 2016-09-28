//example for Dante
//Live type
//Amanda Agricola

//below is an array to hold all the letters
String[] someText = {"a", "b", "c", "d"}; //you will continue to add the letters here

float xPos = 0;
float yPos = 100;

int text_size = 14;

void setup() {
  size(600, 600);
  textSize(text_size);

}

void draw(){
  if (key == 'a') {
  text(someText[0], xPos, yPos); //array index begins as 0
}
  if (key == 'b') {
  text(someText[1], xPos, yPos);
}
  if (key == 'c') {
  text(someText[2], xPos, yPos);
}
  if (key == 'd') {
  text(someText[3], xPos, yPos);
}
}

void keyPressed(){
 if(xPos< 600){
  xPos+=20; 
 }else{
  yPos+=50; //send typing to the next line
  xPos=0; // reset x to 0
 }
}


 