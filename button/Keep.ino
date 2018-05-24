/*
 * Keep button
 * for http://keeporsweep.net
 * from http://rasterweb.net/raster/2011/05/09/the-button/
 */

void setup() {
  Serial.begin(9600);
  pinMode(10, INPUT_PULLUP);
  delay(500);
}
 
void loop() {
  if (digitalRead(10) == HIGH) {
    delay(10);
  } else {
    // Space for Keep
    Keyboard.print(" ");
    delay(1000);
  }
  delay(10);
}
