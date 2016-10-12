int analogValue;
int mappedValue;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);

}

void loop() {
  // put your main code here, to run repeatedly:
  analogValue = analogRead(1);
  mappedValue = map(analogValue, 0, 1023, 0, 255);
  Serial.print("sensor =");
  Serial.print(analogValue);
  Serial.print("\t output = ");
  Serial.println(mappedValue);
  delay(100);
}
