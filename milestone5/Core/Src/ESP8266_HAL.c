/*
 * ESP8266_HAL.c
 *
 *  Created on: Apr 14, 2020
 *      Author: Controllerstech
 */


#include "UartRingbuffer_multi.h"
#include "ESP8266_HAL.h"
#include "stdio.h"
#include "string.h"

extern UART_HandleTypeDef huart1;
extern UART_HandleTypeDef huart2;

#define wifi_uart &huart1
#define pc_uart &huart2

char buffer[200];
char data[80];

/*****************************************************************************************************************************************/

void ESP_Init (char *SSID, char *PASSWD)
{
	Ringbuf_init();

	/********* AT+RST **********/
	Uart_sendstring("AT+RST\r\n", wifi_uart);
	Uart_sendstring("RESETTING...", pc_uart);
	for (int i = 0; i < 5; i++)
	{
		Uart_sendstring(".", pc_uart);
		HAL_Delay(1000);
	}
	Uart_sendstring("\n", pc_uart);

	/********* AT **********/
	Uart_sendstring("AT\r\n", wifi_uart);
	while(!(Wait_for("OK", wifi_uart)));
	Uart_sendstring("AT---->OK\n", pc_uart);


	/********* AT+CWMODE=1 **********/
	Uart_sendstring("AT+CWMODE=1\r\n", wifi_uart);
	while (!(Wait_for("OK", wifi_uart)));
	Uart_sendstring("AT+CWMODE---->OK\n", pc_uart);


	/********* AT+CWJAP="SSID","PASSWD" **********/
	Uart_sendstring("Connecting...\n", pc_uart);
	sprintf (data, "AT+CWJAP=\"%s\",\"%s\"\r\n", SSID, PASSWD);
	Uart_sendstring(data, wifi_uart);
	while (!(Wait_for("WIFI GOT IP\r\n\r\nOK", wifi_uart)));
	Uart_sendstring("AT+CWJAP---->OK\n", pc_uart);
	sprintf (data, "Connected to \"%s\"\n", SSID);
	Uart_sendstring(data,pc_uart);


	/********* AT+CIFSR **********/
	Uart_sendstring("AT+CIFSR\r\n", wifi_uart);
	while (!(Wait_for("+CIFSR:STAIP,\"", wifi_uart)));
	while (!(Copy_upto("\"",buffer, wifi_uart)));
	while (!(Wait_for("OK", wifi_uart)));
	int len = strlen (buffer);
	buffer[len-1] = '\0';
	sprintf (data, "IP ADDRESS: %s\n", buffer);
	Uart_sendstring(data, pc_uart);

	/********* AT+CIPMUX **********/
	Uart_sendstring("AT+CIPMUX=1\r\n", wifi_uart);
	while (!(Wait_for("OK", wifi_uart)));
	Uart_sendstring("AT+CIPMUX---->OK\n", pc_uart);

	/********* AT+CIPSERVER **********/
	Uart_sendstring("AT+CIPSERVER=1,80\r\n", wifi_uart);
	while (!(Wait_for("OK", wifi_uart)));
	Uart_sendstring("AT+CIPSERVER---->OK\n", pc_uart);

	Uart_sendstring("WiFi Connection is established.\n", pc_uart);
}

void Data_Transmission (char *TOKEN, int SPO2, float BPM, float TEMP, float HRV)
{
	/********* AT+CIPSTART **********/
	Uart_sendstring("AT+CIPSTART=1,\"TCP\",\"blynk.cloud\",80\r\n", wifi_uart);
	while (!(Wait_for("1,CONNECT\r\n\r\nOK", wifi_uart)));
	Uart_sendstring("AT+CIPSTART---->OK\n", pc_uart);

	/********* AT+CIPSEND **********/
	sprintf (buffer, "GET /external/api/batch/update?token=%s&v0=%d&v1=%0.0f&v2=%0.0f&v3=%0.0f HTTP/1.1\r\nHost: blynk.cloud\r\nContent-Type: application/x-www-form-urlencoded\r\n", TOKEN, SPO2, BPM, TEMP, HRV);
	sprintf (data, "AT+CIPSEND=1,%d\r\n", strlen(buffer)-6);
	Uart_sendstring(data, wifi_uart);
	while (!(Wait_for("OK\r\n>", wifi_uart)));
	Uart_sendstring(buffer, wifi_uart);
	while (!(Wait_for("SEND OK", wifi_uart)));
	Uart_sendstring("GET request---->OK\n", pc_uart);

	/********* AT+CIPCLOSE **********/
	Uart_sendstring("AT+CIPCLOSE=1\r\n", wifi_uart);
	Uart_sendstring("AT+CIPCLOSE---->OK\n", pc_uart);
}
