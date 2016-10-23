const int Bt_pin = 7; // digital pin connected to button output
const int X_pin = 0; // analog pin connected to x output
const int Y_pin = 1; // analog pin connected to y output
int xpos;
int ypos;
int vectorArray[] = {xpos, ypos};


void setup() {
  // put your setup code here, to run once:
  pinMode(Bt_pin, INPUT);
  digitalWrite(Bt_pin, HIGH);
  Serial.begin(9600);

}

void loop() {
  // put your main code here, to run repeatedly:
  xpos = analogRead(X_pin);
  ypos = analogRead(Y_pin);
  // array for x and y readings from joystick
  int vectorArray[] = {xpos, ypos};
//  Serial.print("X-axis: ");
//  Serial.print(vectorArray[0]);
//  Serial.print("\n");
//  Serial.print("Y-axis: ");
//  Serial.println(vectorArray[1]);
//  Serial.print("\n\n");
  // write to serial using buffer
  // adjust buffer to send ints instead of bytes
  Serial.write((uint8_t*)vectorArray, sizeof(vectorArray));
  delay(500);

}
