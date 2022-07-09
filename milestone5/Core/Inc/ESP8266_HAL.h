/*
 * ESP8266_HAL.h
 *
 *  Created on: Apr 14, 2020
 *      Author: Controllerstech
 */

#ifndef INC_ESP8266_HAL_H_
#define INC_ESP8266_HAL_H_


void ESP_Init (char *SSID, char *PASSWD);

void Data_Transmission (char *TOKEN, int SPO2, float BPM, float TEMP, float HRV);


#endif /* INC_ESP8266_HAL_H_ */
