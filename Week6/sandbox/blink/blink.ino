void setup() {
  // put your setup code here, to run once:
  pinMode(2, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(2, HIGH);
  delay(200);
  digitalWrite(2, LOW);
  delay(100);

  digitalWrite(3, HIGH);
  delay(200);
  digitalWrite(3, LOW);
  delay(100);
}
