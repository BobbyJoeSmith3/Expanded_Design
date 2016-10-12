int analog0;

void setup() {
  // put your setup code here, to run once:

}

void loop() {
  // put your main code here, to run repeatedly:
  analog0 = analogRead(0);
  analog0 = map(analog0, 0, 1023, 0, 255);
  analogWrite(3, analog0);
  
}
