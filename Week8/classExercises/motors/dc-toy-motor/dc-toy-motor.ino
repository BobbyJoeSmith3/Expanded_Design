/*
Adafruit Arduino - DC Motor
The transistor acts like a switch, controlling the power to the motor, 
Arduino pin 3 is used to turn the transistor on and off and is given the name 'motorPin' in the sketch.
When the sketch starts, it prompts you, to remind you that to control the speed of the motor you need 
to enter a value between 0 and 255 in the Serial Monitor.
*/
 
 
int motorPin = 3;
 
void setup() 
{ 
  pinMode(motorPin, OUTPUT);
  Serial.begin(9600);
  while (! Serial);
  Serial.println("Speed 0 to 255");
} 
 
 
void loop() 
{ 
  if (Serial.available())
  {
    /*
     * 'Serial.parseInt' is used to read the number entered as text in the Serial Monitor and convert it into an 'int'
     * You could type any number here, so the 'if' statement on the next line only does an analog write with this number 
     * if the number is between 0 and 255.
     */
    int speed = Serial.parseInt();
    if (speed >= 0 && speed <= 255)
    {
      analogWrite(motorPin, speed);
    }
  }
} 
