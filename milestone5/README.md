# Health Monitoring System with STM32, ESP8266 and Blynk IoT Platform
This example serves as a guidance for interested parties to explore the STM32 family development kit in the field of Internet of Things (IoT).
It will collect readings from the user, and send the information to a IoT platform using Blynk HTTPs REST API through WiFi. 

**Equipment & Tools :** 
 - Nucleo-F446RE development board ([Link](https://www.st.com/en/evaluation-tools/nucleo-f446re.html))
 
 Note : You are free to use any available STM32 Nucleo-64 development board in your possession. 
 - STM32CubeIDE development tool ([Link](https://www.st.com/en/development-tools/stm32cubeide.html))
 - Cytron ESP8266 WiFi Shield ([Link](https://docs.google.com/document/d/1LFCe6MTNQh_0EBHRgc0f6n_hDLNUG8sFuM53oBJG8eE/view)) or any equivalent ESP8266 module.
 - Sensor modules [LM35 Temperature Sensor ([Link](https://www.ti.com/product/LM35)), AD8232 Heart Rate Monitor ([Link](https://www.analog.com/media/en/technical-documentation/data-sheets/ad8232.pdf)) & MAX30102 Pulse Oximeter ([Link](https://www.maximintegrated.com/en/products/interface/sensor-interface/MAX30102.html))]

Note : You are free to use any sensors to setup your IoT system. 

## Procedure
Note : Blynk IoT platform creation will not be covered in this procedure. Please refer to Blynk official website for the setup guide.
 1. Install the STM32CubeIDE development tool. 
 2. Create a new project, and select the appropriate board or device.
 3. Refer to the table below or the .IOC file to acquire the pin location.
 4. Import the source codes and their header files.
 5. In main.c, update the **ssid**, **pass**, and **token** according to your setup. 
 6. Make sure the baud rate of UART1 is similar to ESP8266 module. By default, it is configured at 9600. The UART2 is connected to a serial monitor in your PC.
 7. In stm32f4xx_it.c, apply the same assignment for UART1 and UART2 interrupt handlers. 
 8. In ESP8266_HAL.c, update the GET request based on your Blynk Datastream ID. The GET request is based on the HTTPs REST API (Batch Update of the Datastreams).
 9. Build the application project.
 10. Download the ELF file into your development board.

**Module Pin Assignments:**
| Modules  | Module Pins | STM32 Pin Assignment |
|--|--|--|
| Cytron ESP8266 WiFi Shield | ESP8266 RX<br>ESP8266 TX |STM32 UART1_TX (PA_9)<br>STM32 UART1_RX (PA_10) |
| LM35 Temperature Sensor | OUT| STM32 ADC1_7 (PA_7) |
| AD8232 Heart Rate Monitor | OUT<br>LO+<br>LO-| STM32 ADC1_10 (PC_0)<br>STM32 GPIO_Input (PC_1)<br>STM32 GPIO_Input (PA_4) |
| MAX30102 Pulse Oximeter | SCL<br>SDA<br>INT | STM32 I2C1_SCL (PB_8)<br>STM32 I2C1_SDA (PB_9)<br>STM32 GPIO_EXT_INT (PA_6) |

**Actual Board Setup**
![Actual board setup](https://github.com/lygooi3/mkel1123/blob/main/pic.jpg)

**Blynk IoT Platfrom**
![Blynk IoT platform](https://github.com/lygooi3/mkel1123/blob/main/milestone5/pic2.PNG)

**Disclaimer:**
The software development for sensor modules is not complete, and may prone to errors. Please refer to Reference section for similar sensor module libraries. 

### YouTube Link : 
[System Showcase (Under-development)](https://www.youtube.com/watch?v=Uouznfx2jsg)

### Reference :
 1. [Getting Started with STM32 - Introduction to STM32CubeIDE by Digikey](https://www.digikey.my/en/maker/projects/getting-started-with-stm32-introduction-to-stm32cubeide/6a6c60a670c447abb90fd0fd78008697)
 2. [NUCLEO-F446RE Pinout](https://os.mbed.com/platforms/ST-Nucleo-F446RE/)
 3. [ESP8266 AT Instruction Set](https://www.espressif.com/sites/default/files/4a-esp8266_at_instruction_set_en_v1.5.4_0.pdf)
 4. [Esp8266 WebServer using STM32 HAL](https://controllerstech.com/esp8266-webserver-using-stm32-hal/)
 5. [Health Monitoring system - Undergraduation major project](https://github.com/vikrantdeveloper/health-monitoring-system)
 6. [STM32 LM35 Temperature Sensor Example – LM35 With STM32 ADC](https://deepbluembedded.com/stm32-lm35-temperature-sensor-example-lm35-with-stm32-adc/)
 7. [STM32 HAL library for MAX30102.](https://github.com/lamik/MAX30102_STM32_HAL)
