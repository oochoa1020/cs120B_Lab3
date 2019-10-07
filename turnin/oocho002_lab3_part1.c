/*	Author: oocho002
 *  Partner(s) Name: Gurparam
 *	Lab Section:
 *	Assignment: Lab #  Exercise #
 *	Exercise Description: [optional - include for your own benefit]
 *
 *	I acknowledge all content contained herein, excluding template or example
 *	code, is my own original work.
 */
#include <avr/io.h>
#ifdef _SIMULATE_
#include "simAVRHeader.h"
#endif

int main(void) {
	DDRA = 0x00; PORTA = 0xFF;
	DDRB = 0x00; PORTB = 0xFF;
	DDRC = 0xFF; PORTC = 0x00;
	unsigned char tmpC = 0x00;
	unsigned char tmpA = 0x00;
	unsigned char tmpB = 0x00;
	unsigned char curA = 0x00;
	unsigned char curB = 0x00;

	while(1) {
		tmpA = PINA & 0xFF;
		tmpB = PINB & 0xFF;
		curA = tmpA & 0x01;
		tmpC = 0x00;
		if (curA == 0x01) {
			tmpC = tmpC + 1;
		}
		curA = tmpA & 0x02;
                if (curA == 0x02) {
			tmpC = tmpC + 1;
		}
		curA = tmpA & 0x04;
                if (curA == 0x04) {
			tmpC = tmpC + 1;
		}
		curA = tmpA & 0x08;
                if (curA == 0x08) {
			tmpC = tmpC + 1;
		}
		curA = tmpA & 0x10;
                if (curA == 0x10) {
                        tmpC = tmpC + 1;
                }
                curA = tmpA & 0x20;
                if (curA == 0x20) {
                        tmpC = tmpC + 1;
                }
                curA = tmpA & 0x40;
                if (curA == 0x40) {
                        tmpC = tmpC + 1;
                }
                curA = tmpA & 0x80;
                if (curA == 0x80) {
                        tmpC = tmpC + 1;
                }
		
		curB = tmpB & 0x01;
		if (curB == 0x01) {
                        tmpC = tmpC + 1;
                }
                curB = tmpB & 0x02;
                if (curB == 0x02) {
                        tmpC = tmpC + 1;
                }
                curB = tmpB & 0x04;
                if (curB == 0x04) {
                        tmpC = tmpC + 1;
                }
                curB = tmpB & 0x08;
                if (curB == 0x08) {
                        tmpC = tmpC + 1;
                }
		curB = tmpB & 0x10;
                if (curB == 0x10) {
                        tmpC = tmpC + 1;
                }
                curB = tmpB & 0x20;
                if (curB == 0x20) {
                        tmpC = tmpC + 1;
                }
                curB = tmpB & 0x40;
                if (curB == 0x40) {
                        tmpC = tmpC + 1;
                }
                curB = tmpB & 0x80;
                if (curB == 0x80) {
                        tmpC = tmpC + 1;
                }

		PORTC = tmpC;
	}
    return 1;
}
