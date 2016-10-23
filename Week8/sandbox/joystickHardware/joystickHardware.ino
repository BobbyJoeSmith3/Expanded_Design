const int Bt_pin = 7; // digital pin connected to button output
const int X_pin = 0; // analog pin connected to x output
const int Y_pin = 1; // analog pin connected to y output

void setup() {
  // put your setup code here, to run once:
  pinMode(Bt_pin, INPUT);
  digitalWrite(Bt_pin, HIGH);
  Serial.begin(9600);

}

void loop() {
  // put your main code here, to run repeatedly:
  Serial.print("Switch:  ");
  Serial.print(digitalRead(Bt_pin));
  Serial.print("\n");
  Serial.print("X-axis: ");
  Serial.print(analogRead(X_pin));
  Serial.print("\n");
  Serial.print("Y-axis: ");
  Serial.println(analogRead(Y_pin));
  Serial.print("\n\n");
  delay(500);

}
