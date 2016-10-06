int buttonPin = 3;                       // Switch connected to pin 4
int buttonState = 0;
int ledPin = 2;
void setup() {
  pinMode(buttonPin, INPUT);             // Set pin 0 as an input
  pinMode(ledPin, OUTPUT);
  Serial.begin(9600);                    // Start serial communication at 9600 bps
}

void loop() {
  buttonState = digitalRead(buttonPin);
  if (buttonState == HIGH) {  // If switch is ON,
    Serial.write(1);               // send 1 to Processing
    digitalWrite(ledPin, HIGH);
  } else {                               // If the switch is not ON,
    Serial.write(0);               // send 0 to Processing
    digitalWrite(ledPin, LOW);
  }
  delay(100);                            // Wait 100 milliseconds
}
