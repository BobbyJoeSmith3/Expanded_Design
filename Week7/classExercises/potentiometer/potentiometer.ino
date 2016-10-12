int analogValue;
// hold mapped value
int mappedValue;

void setup() {
  // put your setup code here, to run once:
  // start communication with serial monitor
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  // zero is the pin number
  analogValue = analogRead(0);
  // analog output has a max of 255 so need to map value
  mappedValue = map(analogValue, 0, 1023, 0, 255);
  Serial.print("sensor = ");
  Serial.print(analogValue);
  Serial.print("\t output = ");
  Serial.print(mappedValue);
  // make the display of numbers smoother
  delay(100);
}
