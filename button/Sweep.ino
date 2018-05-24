/*
 * Sweep button
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
    // Delete for Sweep
    Keyboard.set_key1(KEY_DELETE);
    Keyboard.send_now(); // hit delete
    Keyboard.set_key1(0);
    Keyboard.send_now();
    delay(1000);
  }
  delay(10);
}
