# STM32 Familiarization (Milestone 1)
This example serves as a guidance for interested parties to explore the STM32 family development kit.
It will perform the LED Blink program which the board LED will blink at an interval of 1 second. 

**Objective :** To achieve familiarization with STM32 firmware development.

**Equipment & Tools :** 
 * Nucleo-F446RE development board ([Reference Link](https://www.st.com/en/evaluation-tools/nucleo-f446re.html))
 * STM32CubeIDE development tool ([Reference Link](https://www.st.com/en/development-tools/stm32cubeide.html))
 
 Note : You are free to use any available STM32 Nucleo-64 development board in your possession. 
 
**GitHub Attachments :**
| Files |  Description|
|--|--|
| main.c | The main LED Blink source code for Nucleo-F446RE development board. |
| ReadMe.md | Provide information about this example. |
| pic.jpg | Photo of the Nucleo-F446RE development board.|

## Procedure

 1. Install the STM32CubeIDE development tool. 
 2. Create a new project, and select the appropriate board or device.
 3. Refer to the .IOC file to acquire the pin location for the board LED.
 *Nucleo-F446RE development board have its board LED at PA5.
 4. Add HAL_GPIO_TogglePin() and HAL_Delay() APIs in the provided main.c source code. 
 5. You may modify the pins based on the .IOC file, and delay period to your liking.
 6. Build the application project.
 7. Download the ELF file into your development board.

#### Nucleo-F446RE development board
<img src="https://github.com/lygooi3/mkel1123/blob/main/milestone1/pic.jpg" width="500" height="500">

#### YouTube Link
[STM32 LED Blinky](https://youtu.be/tKQf3vvvyfc)

#### Reference

 1. [Getting Started with STM32 - Introduction to STM32CubeIDE by Digikey](https://www.digikey.my/en/maker/projects/getting-started-with-stm32-introduction-to-stm32cubeide/6a6c60a670c447abb90fd0fd78008697)
