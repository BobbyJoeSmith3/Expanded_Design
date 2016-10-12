int red = 6;
int green = 5;
int blue = 3;

int analogValue;
int mappedValue;


void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);

}

void loop() {
  // put your main code here, to run repeatedly:
  analogValue = analogRead(0);
  mappedValue = map(analogValue, 0, 1023, 0, 255);

  analogWrite(red, 255);
  analogWrite(green, mappedValue);
  analogWrite(blue, 255 - mappedValue);
  Serial.print("green = ");
  Serial.print(mappedValue);
  Serial.print("\t blue = ");
  Serial.println(255 - mappedValue);
  delay(100);
}
