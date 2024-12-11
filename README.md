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
2. Before attaching the force sensors to the breadboard, you should solder extension wires and M-M header pins to the clincher connectors. Add heatshrink over these new connections to strengthen them. Then attach the clincher connectors to the force sensors. This is so that the force sensors can be placed inside the stuffed animal's paws. I would also recommend adding tape every about half inch so that the extended wires do not get tangled.
<img width="548"  src="https://github.com/user-attachments/assets/54283929-688b-4f3b-a3da-86e77b30c3d2" />

### Code 

### Enclosure 
