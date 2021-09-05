;**********************************************************************
;   This file is a basic code template for assembly code generation   *
;   on the PIC16F690. This file contains the basic code               *
;   building blocks to build upon.                                    *  
;                                                                     *
;   Refer to the MPASM User's Guide for additional information on     *
;   features of the assembler (Document DS33014).                     *
;                                                                     *
;   Refer to the respective PIC data sheet for additional             *
;   information on the instruction set.                               *
;                                                                     *
;**********************************************************************
;                                                                     *
;    Name: Ashton Tran                                                *
;    Assignment 03                                                    * 
;                                                                     *
;**********************************************************************
;                                                                     *
;    Files Required: P16F690.INC                                      *
;                                                                     *
;**********************************************************************
;                                                                     *
;    Notes:                                                           *
;                                                                     *
;**********************************************************************


	list		p=16f690		; list directive to define processor
	#include	<P16F690.inc>		; processor specific variable definitions
	
	__CONFIG    _CP_OFF & _CPD_OFF & _BOR_OFF & _PWRTE_ON & _WDT_OFF & _INTRC_OSC_NOCLKOUT & _MCLRE_ON & _FCMEN_OFF & _IESO_OFF

;***** VARIABLE DEFINITIONS
A_reg	EQU 0x20	;location of the a reg
B_reg	EQU 0x21	;location of the b reg
C_reg	EQU 0x22	;location of the c reg

	ORG		0x000			; processor reset vector
main

    movlw	 0x32		
	movwf	 B_reg 		
	movlw	 0x23
	movwf	 A_reg
	subwf	 B_reg,w
	movwf	 C_reg
	movlw	 C_reg


GOTO main

	ORG	0x2100				; data EEPROM location
	DE	1,2,3,4				; define first four EEPROM locations as 1, 2, 3, and 4
	END                       ; directive 'end of program'
