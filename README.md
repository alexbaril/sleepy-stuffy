# Sleepy Stuffy

## About 
The goal of this project was to create a stuffed animal that plays music from a computer by squeezing its paws. The user presses the front left paw to pause and play the songs. The user presses the front right paw to switch to the next song; the user can only switch songs while the music is currently playing. Force sensors are used to detect the squeezing of the paws. The ESP32 is used for collection of sensor data and serial communication. Processing is used to produce the audio. 

To learn more, take a look at my [blog post](https://diamond-bovid-ab4.notion.site/Sleepy-Stuffy-159f9793688a8057ae60ee97d9da9bd6?pvs=4).

## References 
This [tutorial](https://esp32io.com/tutorials/esp32-force-sensor) from ESP32 I/O helped guide my materials selection, code, and wiring. 

## Materials 
+ ESP32 TTGO T-display
+ [Force Sensors](https://www.amazon.com/dp/B0D2K6TVLT?&linkCode=sl1&tag=zlufy-20&linkId=26d261d15dd229a10de99e30bdbb5997&language=en_US&ref_=as_li_ss_tl)
+ [Clincher Connectors](https://www.sparkfun.com/products/14195)
+ [10kΩ Resistors](https://www.sparkfun.com/products/11508) 
+ [Half-Size Breadboard](https://www.amazon.com/DIYables-Half-Size-Breadboard-Arduino-Raspberry/dp/B0BXKM8DQ8?ref_=ast_sto_dp&th=1&psc=1)
+ M-M Header Pins
+ Wires
+ Heatshrink
+ Stuffed Animal

## Instructions 

### Breadboarding 
<img width="548" alt="Screenshot 2024-12-11 at 4 02 35 PM" src="https://github.com/user-attachments/assets/7ec8a20e-09b0-4042-a159-6e0d4e961e32" />

1. Follow the Fritzing diagram above when wiring the components.
   
2. Before attaching the force sensors to the breadboard, you should solder extension wires and M-M header pins to the clincher connectors. Add heatshrink over these new connections to strengthen them. Then attach the clincher connectors to the force sensors. This is so that the force sensors can be placed inside the stuffed animal's paws. I would also recommend adding tape every about half inch so that the extended wires do not get tangled; the image below is from before I added the tape and as you see the wires are a bit messy and can easily get tangled. 
<img width="548"  src="https://github.com/user-attachments/assets/54283929-688b-4f3b-a3da-86e77b30c3d2" />

### Code 
1. Download the forcesensor.ino file from the Arduino-Sleepy-Stuffy folder. Upload this program onto your ESP32.

2. Download the files from the Sleepy-Stuffy folder. Note you may have to change line 60 in SleepyStuffy.pde so that it reflects the correct port name for your ESP32. Make sure all audio files are in the same folder as the pde file.

### Enclosure 
1. Procure a medium sized stuffed animal. You are going to need to place the breadboard inside it, so I would recommend one that has a zipper on its side. Also make sure the paws are big enough to fit the circular part of the force sensors.

2. Unstitch the paws from the stuffed animal. ![IMG_7358](https://github.com/user-attachments/assets/28cb4c21-fe4c-4015-b44b-798733c1c8c5)

3. Place the electronics inside the stuffed animal. You may need to remove some stuffing. Feed the wires attached to the clincher connectors through so they are sticking out where the paws used to be attached. I found that disconnecting the clincher connectors from the force sensors was helpful for this step. Once the wires were sticking out, I then again attach the clincher connectors to the force sensors.
![IMG_7365](https://github.com/user-attachments/assets/152a6ff6-0d59-4fc7-98a1-851226370a61)
<img width="548"  src="https://github.com/user-attachments/assets/ce204e97-2627-4aec-8077-ff20e4b04207" />

5. Zip up the side where the breadboard is placed leaving a bit of space so that you can plug in the USB-C cable.

6. Remove the sticker back from the force sensors and stick them to the inside of the paws.

7. Resew the paws on the stuffed animal.

