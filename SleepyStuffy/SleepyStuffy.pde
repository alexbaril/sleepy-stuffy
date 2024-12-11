//this code builds off of code for Lab 2 by Professor Tseng 
//it also builds off code from this thread https://forum.processing.org/two/discussion/comment/80153/index.html#Comment_80153

import processing.serial.*;
import ddf.minim.*;

//create 4 AudioPlayer and 4 Minim for the 4 song options
AudioPlayer player1;
AudioPlayer player2;
AudioPlayer player3;
AudioPlayer player4;

Minim minim1; 
Minim minim2; 
Minim minim3; 
Minim minim4; 

float value = 1;


boolean pause = true;   //pause starts as true -- need to press the paw to start the music 

Serial myPort;  // Create object from Serial class
String val;      // Data received from the serial port


void setup()
{
  size(50, 50);
  
  //creating the Minim and loading in the songs 
  minim1 = new Minim(this);
  player1 = minim1.loadFile("sound1.mp3");
  player1.play();
  player1.mute();
  player1.rewind();
  
  minim2 = new Minim(this);
  player2 = minim2.loadFile("sound2.mp3");
  player2.play();
  player2.mute();
  player2.rewind();
  
  
  minim3 = new Minim(this);
  player3 = minim3.loadFile("sound3.mp3");
  player3.play();
  player3.mute();
  player3.rewind();
  
  minim4 = new Minim(this);
  player4 = minim4.loadFile("sound4.mp3");
  player4.play();
  player4.mute();
  player4.rewind();
  
  
  //helps to figure out which port the ESP32 is on
  printArray(Serial.list());
  String portName = Serial.list()[3]; // you might need to change the 3 to correspond with the correct port 
  println(portName);
  myPort = new Serial(this, portName, 9600); // ensure baudrate is consistent with arduino sketch
  
}

void draw()
{
  if ( myPort.available() > 0) {  // If data is available,
    val = myPort.readStringUntil('\n');         // read it and store it in val
  }
  val = trim(val);
  if ( val != null ) {
    background(0);
    println(val);
    int[] rl = int(split(val, ',')); // making an array of 2 values which are the right and left force sensor values 

    //use if statement to check serial input length to prevent ArrayIndexOutOfBounds errors
    if (rl.length == 2) {
      int r = rl[0]; //right value
      int l = rl[1]; //left value 
   
      //right paw code -- skip to the next song 
      if(r > 900 && !pause){
        delay(1000); 
        
        //code to update value 
        if (value == 4)
        {
          value = 1;
        }
        else{
          value = value+1;
        }
        println("value: " + value);
        
        // code to play the songs that correspond with each value and stop the previous song 
        if (value == 1)
        {
           player4.mute();
           player4.rewind();
           player1 = minim1.loadFile("sound1.mp3");
           player1.play();
        }
        
        if(value == 2)
        {
           player1.mute();
           player1.rewind();
           player2 = minim2.loadFile("sound2.mp3");
           player2.play();
        }
        
        if(value == 3)
        {
           player2.mute();
           player2.rewind();
           player3 = minim3.loadFile("sound3.mp3");
           player3.play();
        }
        
        if(value == 4)
        {
          player3.mute();
          player3.rewind();
          player4 = minim4.loadFile("sound4.mp3");
          player4.play();
        }
      }
      
      //left paw code -- play and pause the music 
      if (l > 900)
      {
        delay(1000);
        //println("left");
        pause = !pause; //updating the pause/play value when pressed 
        //println(pause);
        
       //pause/play code for the song that corresponds with the value 
        if(value == 1)
        {
          if (pause == true)
          {
            player1.mute();
            player1.rewind();
          }
          else
          {
            player1 = minim1.loadFile("sound1.mp3");
            player1.play();
          }
        }
        
        if(value == 2)
        {
          if (pause == true)
          {
            player2.mute();
            player2.rewind();
          }
          else
          {
            player2 = minim2.loadFile("sound2.mp3");
            player2.play();
          }
        }
        
        if(value == 3)
        {
          if (pause == true)
          {
            player3.mute();
            player2.rewind();
          }
          else
          {
            player3 = minim3.loadFile("sound3.mp3");
            player3.play();
          }
        }
        
        if(value == 4)
        {
          if (pause == true)
          {
            player4.mute();
            player4.rewind();
          }
          else
          {
            player4 = minim4.loadFile("sound4.mp3");
            player4.play();
          }
        }
        
      }
    }
  }
}
