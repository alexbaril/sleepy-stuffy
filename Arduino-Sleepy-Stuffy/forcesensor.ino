//This code builds off of code created by esp32io.com -- https://esp32io.com/tutorials/esp32-force-sensor
 
#define FORCE_SENSOR_PIN_R 36 // ESP32 pin GPIO36 (ADC0): the FSR and 10K pulldown are connected to A0
#define FORCE_SENSOR_PIN_L 2 // ESP2 pin GPIO2 (ADC12)

void setup() {
  Serial.begin(9600);

  // set the ADC attenuation to 11 dB (up to ~3.3V input)
  analogSetAttenuation(ADC_11db);
}

void loop() {
  int rVal = analogRead(FORCE_SENSOR_PIN_R);
  int lVal = analogRead(FORCE_SENSOR_PIN_L);

  Serial.printf("%d,%d",rVal,lVal); // print the raw analog reading
  Serial.println();

  delay(1000);
}
