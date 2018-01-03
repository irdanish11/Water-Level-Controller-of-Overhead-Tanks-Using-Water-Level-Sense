
#include <LiquidCrystal.h>
// initialize the library with the numbers of the interface pins
LiquidCrystal LCD(0, 1, 2, 3, 4, 5); /// REGISTER SELECT PIN,ENABLE PIN,D4 PIN,D5 PIN, D6 PIN, D7 PIN
const int trigPin = 6;
const int echoPin = 7;
int L1_red=8;
int L2_yellow=9;
int L3_green=10;
int buzz=11;
int relay_motor = 12;
long duration;
int distance;
int water_percentage;

// the setup function runs once when you press reset or power the board
void setup() {
 
  // initialize digital pin 6 as an output.
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);
  pinMode(L1_red, OUTPUT);
  pinMode(L2_yellow, OUTPUT);
  pinMode(L3_green, OUTPUT);
  //pinMode(buzz, OUTPUT);
  pinMode(relay_motor,OUTPUT);
  
  LCD.begin(16,2); //Tell Arduino to start your 16 column 2 row LCD
  //Serial.begin(9600);
}

// the loop function runs over and over again forever
void loop() 
{
// Clears the trigPin
digitalWrite(trigPin, LOW);
delayMicroseconds(2);
// Sets the trigPin on HIGH state for 10 micro seconds
digitalWrite(trigPin, HIGH);
delayMicroseconds(10);
digitalWrite(trigPin, LOW);
// Reads the echoPin, returns the sound wave travel time in microseconds
duration = pulseIn(echoPin, HIGH);
// Calculating the distance
distance= duration*0.034/2;
water_percentage=(100-((distance*100)/37.7));
LCD.setCursor(0,0);  //Set LCD cursor to upper left corner, column 0, row 0
LCD.print("Water Level:");  //Print Message on First Row
LCD.print(water_percentage); //Print measured distance
LCD.print("%");
LCD.setCursor(0,1);  //Set cursor to first column of second row
LCD.setCursor(0,1);   //Set Cursor again to first column of second row
LCD.print("Distance:");  //Print Message on First Row
LCD.print(distance);  //Print Message on First Row


if(water_percentage<25)
{
  digitalWrite(relay_motor, HIGH);
  digitalWrite(L1_red, HIGH);
  //digitalWrite(L2_yellow, LOW);
  digitalWrite(L3_green, LOW);
  tone(buzz, 2000);
  delay(150);
  noTone(buzz);
  delay(100);
  
  
}
else if(water_percentage>=25 && water_percentage<=90)
{
  digitalWrite(L1_red, LOW);
  digitalWrite(L2_yellow, HIGH);
  digitalWrite(L3_green, LOW);
  }
else if(water_percentage>90)
{
  digitalWrite(relay_motor, LOW);
  digitalWrite(L1_red, LOW);
  //digitalWrite(L2_yellow, LOW);
  digitalWrite(L3_green, HIGH);
 
}

else
{
  //Nothing to do.
  
}


    


}//end of main.

