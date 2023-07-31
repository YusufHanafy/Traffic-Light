
_counter:

;Traffic_Light.c,13 :: 		void counter(int c,int x){
;Traffic_Light.c,14 :: 		int arr [] ={0,1,2,3,4,5,6,7,8,9,16,17,18,19,20,21,22,23,24,25,32,33,34,35};
	MOVLW      ?ICScounter_arr_L0+0
	MOVWF      ___DoICPAddr+0
	MOVLW      hi_addr(?ICScounter_arr_L0+0)
	MOVWF      ___DoICPAddr+1
	MOVLW      counter_arr_L0+0
	MOVWF      FSR
	MOVLW      48
	MOVWF      R0+0
	CALL       ___CC2DW+0
;Traffic_Light.c,15 :: 		for(;c>-1;c--){
L_counter0:
	MOVLW      127
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_counter_c+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__counter39
	MOVF       FARG_counter_c+0, 0
	SUBLW      255
L__counter39:
	BTFSC      STATUS+0, 0
	GOTO       L_counter1
;Traffic_Light.c,16 :: 		portc=255;
	MOVLW      255
	MOVWF      PORTC+0
;Traffic_Light.c,17 :: 		displays=arr[c];
	MOVF       FARG_counter_c+0, 0
	MOVWF      R0+0
	MOVF       FARG_counter_c+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      counter_arr_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;Traffic_Light.c,18 :: 		if(x==1){
	MOVLW      0
	XORWF      FARG_counter_x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__counter40
	MOVLW      1
	XORWF      FARG_counter_x+0, 0
L__counter40:
	BTFSS      STATUS+0, 2
	GOTO       L_counter3
;Traffic_Light.c,19 :: 		portd.B3=1;
	BSF        PORTD+0, 3
;Traffic_Light.c,20 :: 		portd.B1=1;
	BSF        PORTD+0, 1
;Traffic_Light.c,21 :: 		if(c==20||c<20){
	MOVLW      0
	XORWF      FARG_counter_c+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__counter41
	MOVLW      20
	XORWF      FARG_counter_c+0, 0
L__counter41:
	BTFSC      STATUS+0, 2
	GOTO       L__counter37
	MOVLW      128
	XORWF      FARG_counter_c+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__counter42
	MOVLW      20
	SUBWF      FARG_counter_c+0, 0
L__counter42:
	BTFSS      STATUS+0, 0
	GOTO       L__counter37
	GOTO       L_counter6
L__counter37:
;Traffic_Light.c,22 :: 		portd.B1=0;
	BCF        PORTD+0, 1
;Traffic_Light.c,23 :: 		portd.B2=1;
	BSF        PORTD+0, 2
;Traffic_Light.c,24 :: 		}
L_counter6:
;Traffic_Light.c,25 :: 		}
	GOTO       L_counter7
L_counter3:
;Traffic_Light.c,26 :: 		else if(x==2){
	MOVLW      0
	XORWF      FARG_counter_x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__counter43
	MOVLW      2
	XORWF      FARG_counter_x+0, 0
L__counter43:
	BTFSS      STATUS+0, 2
	GOTO       L_counter8
;Traffic_Light.c,27 :: 		portd.B0=1;
	BSF        PORTD+0, 0
;Traffic_Light.c,28 :: 		portd.B4=1;
	BSF        PORTD+0, 4
;Traffic_Light.c,29 :: 		if(c==12||c<12){
	MOVLW      0
	XORWF      FARG_counter_c+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__counter44
	MOVLW      12
	XORWF      FARG_counter_c+0, 0
L__counter44:
	BTFSC      STATUS+0, 2
	GOTO       L__counter36
	MOVLW      128
	XORWF      FARG_counter_c+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__counter45
	MOVLW      12
	SUBWF      FARG_counter_c+0, 0
L__counter45:
	BTFSS      STATUS+0, 0
	GOTO       L__counter36
	GOTO       L_counter11
L__counter36:
;Traffic_Light.c,30 :: 		portd.B4=0;
	BCF        PORTD+0, 4
;Traffic_Light.c,31 :: 		portd.B5=1;
	BSF        PORTD+0, 5
;Traffic_Light.c,32 :: 		}
L_counter11:
;Traffic_Light.c,33 :: 		}
	GOTO       L_counter12
L_counter8:
;Traffic_Light.c,34 :: 		else if(x==3){
	MOVLW      0
	XORWF      FARG_counter_x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__counter46
	MOVLW      3
	XORWF      FARG_counter_x+0, 0
L__counter46:
	BTFSS      STATUS+0, 2
	GOTO       L_counter13
;Traffic_Light.c,35 :: 		portd.B1=1;
	BSF        PORTD+0, 1
;Traffic_Light.c,36 :: 		}
	GOTO       L_counter14
L_counter13:
;Traffic_Light.c,37 :: 		else if(x==4){
	MOVLW      0
	XORWF      FARG_counter_x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__counter47
	MOVLW      4
	XORWF      FARG_counter_x+0, 0
L__counter47:
	BTFSS      STATUS+0, 2
	GOTO       L_counter15
;Traffic_Light.c,38 :: 		portd.B4=1;
	BSF        PORTD+0, 4
;Traffic_Light.c,39 :: 		}
L_counter15:
L_counter14:
L_counter12:
L_counter7:
;Traffic_Light.c,40 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_counter16:
	DECFSZ     R13+0, 1
	GOTO       L_counter16
	DECFSZ     R12+0, 1
	GOTO       L_counter16
	DECFSZ     R11+0, 1
	GOTO       L_counter16
	NOP
	NOP
;Traffic_Light.c,15 :: 		for(;c>-1;c--){
	MOVLW      1
	SUBWF      FARG_counter_c+0, 1
	BTFSS      STATUS+0, 0
	DECF       FARG_counter_c+1, 1
;Traffic_Light.c,41 :: 		}
	GOTO       L_counter0
L_counter1:
;Traffic_Light.c,42 :: 		if(x==1){portd.B3=0;  portd.B2=0;  portd.B1=0;}
	MOVLW      0
	XORWF      FARG_counter_x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__counter48
	MOVLW      1
	XORWF      FARG_counter_x+0, 0
L__counter48:
	BTFSS      STATUS+0, 2
	GOTO       L_counter17
	BCF        PORTD+0, 3
	BCF        PORTD+0, 2
	BCF        PORTD+0, 1
	GOTO       L_counter18
L_counter17:
;Traffic_Light.c,43 :: 		else if(x==2){portd.B0=0;  portd.B5=0;  portd.B4=0;}
	MOVLW      0
	XORWF      FARG_counter_x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__counter49
	MOVLW      2
	XORWF      FARG_counter_x+0, 0
L__counter49:
	BTFSS      STATUS+0, 2
	GOTO       L_counter19
	BCF        PORTD+0, 0
	BCF        PORTD+0, 5
	BCF        PORTD+0, 4
L_counter19:
L_counter18:
;Traffic_Light.c,44 :: 		}
L_end_counter:
	RETURN
; end of _counter

_automatic:

;Traffic_Light.c,46 :: 		void automatic(){
;Traffic_Light.c,47 :: 		for(;;){
L_automatic20:
;Traffic_Light.c,48 :: 		counter(reds,case1);
	MOVLW      23
	MOVWF      FARG_counter_c+0
	MOVLW      0
	MOVWF      FARG_counter_c+1
	MOVLW      1
	MOVWF      FARG_counter_x+0
	MOVLW      0
	MOVWF      FARG_counter_x+1
	CALL       _counter+0
;Traffic_Light.c,49 :: 		counter(redw,case2);
	MOVLW      15
	MOVWF      FARG_counter_c+0
	MOVLW      0
	MOVWF      FARG_counter_c+1
	MOVLW      2
	MOVWF      FARG_counter_x+0
	MOVLW      0
	MOVWF      FARG_counter_x+1
	CALL       _counter+0
;Traffic_Light.c,50 :: 		if (porta.B0==1){ break; }
	BTFSS      PORTA+0, 0
	GOTO       L_automatic23
	GOTO       L_automatic21
L_automatic23:
;Traffic_Light.c,51 :: 		}
	GOTO       L_automatic20
L_automatic21:
;Traffic_Light.c,52 :: 		}
L_end_automatic:
	RETURN
; end of _automatic

_manual:

;Traffic_Light.c,54 :: 		void manual(){
;Traffic_Light.c,55 :: 		for(;;){
L_manual24:
;Traffic_Light.c,56 :: 		if (porta.B0==1){
	BTFSS      PORTA+0, 0
	GOTO       L_manual27
;Traffic_Light.c,57 :: 		portd.B0=1;
	BSF        PORTD+0, 0
;Traffic_Light.c,58 :: 		portd.b5=1;
	BSF        PORTD+0, 5
;Traffic_Light.c,59 :: 		while (porta.B2);
L_manual28:
	BTFSS      PORTA+0, 2
	GOTO       L_manual29
	GOTO       L_manual28
L_manual29:
;Traffic_Light.c,60 :: 		portd.B0=0;
	BCF        PORTD+0, 0
;Traffic_Light.c,61 :: 		portd.b5=0;
	BCF        PORTD+0, 5
;Traffic_Light.c,62 :: 		portd.b3=1;
	BSF        PORTD+0, 3
;Traffic_Light.c,63 :: 		counter(yellow,case3);
	MOVLW      3
	MOVWF      FARG_counter_c+0
	MOVLW      0
	MOVWF      FARG_counter_c+1
	MOVLW      3
	MOVWF      FARG_counter_x+0
	MOVLW      0
	MOVWF      FARG_counter_x+1
	CALL       _counter+0
;Traffic_Light.c,64 :: 		portd.B1=0;
	BCF        PORTD+0, 1
;Traffic_Light.c,65 :: 		portd.B2=1;
	BSF        PORTD+0, 2
;Traffic_Light.c,66 :: 		while (porta.B2);
L_manual30:
	BTFSS      PORTA+0, 2
	GOTO       L_manual31
	GOTO       L_manual30
L_manual31:
;Traffic_Light.c,67 :: 		portd.b3=0;
	BCF        PORTD+0, 3
;Traffic_Light.c,68 :: 		counter(yellow,case4);
	MOVLW      3
	MOVWF      FARG_counter_c+0
	MOVLW      0
	MOVWF      FARG_counter_c+1
	MOVLW      4
	MOVWF      FARG_counter_x+0
	MOVLW      0
	MOVWF      FARG_counter_x+1
	CALL       _counter+0
;Traffic_Light.c,69 :: 		portd.B2=0;
	BCF        PORTD+0, 2
;Traffic_Light.c,70 :: 		portd.B4=0;
	BCF        PORTD+0, 4
;Traffic_Light.c,71 :: 		}
	GOTO       L_manual32
L_manual27:
;Traffic_Light.c,72 :: 		else if (porta.B0==0){
	BTFSC      PORTA+0, 0
	GOTO       L_manual33
;Traffic_Light.c,73 :: 		automatic();
	CALL       _automatic+0
;Traffic_Light.c,74 :: 		}
L_manual33:
L_manual32:
;Traffic_Light.c,75 :: 		}
	GOTO       L_manual24
;Traffic_Light.c,76 :: 		}
L_end_manual:
	RETURN
; end of _manual

_main:

;Traffic_Light.c,78 :: 		void main() {
;Traffic_Light.c,79 :: 		trisb=0b00000000;  displays=0;     trisd=0b00000000;  portd=0;
	CLRF       TRISB+0
	CLRF       PORTB+0
	CLRF       TRISD+0
	CLRF       PORTD+0
;Traffic_Light.c,80 :: 		trisc.B0=0;        trisc.B1=0;     trisc.B2=0;        trisc.B3=0;
	BCF        TRISC+0, 0
	BCF        TRISC+0, 1
	BCF        TRISC+0, 2
	BCF        TRISC+0, 3
;Traffic_Light.c,81 :: 		portc.B0=0;        portc.B1=0;     portc.B2=0;        portc.B3=0;
	BCF        PORTC+0, 0
	BCF        PORTC+0, 1
	BCF        PORTC+0, 2
	BCF        PORTC+0, 3
;Traffic_Light.c,82 :: 		trisa.B4=1;
	BSF        TRISA+0, 4
;Traffic_Light.c,83 :: 		adcon1=7;  trisa.b0=1;   trisa.b1=1;   trisa.b2=1;
	MOVLW      7
	MOVWF      ADCON1+0
	BSF        TRISA+0, 0
	BSF        TRISA+0, 1
	BSF        TRISA+0, 2
;Traffic_Light.c,84 :: 		porta.b0=0;  porta.b1=0;  porta.b2=0;
	BCF        PORTA+0, 0
	BCF        PORTA+0, 1
	BCF        PORTA+0, 2
;Traffic_Light.c,86 :: 		while(porta.b4);
L_main34:
	BTFSS      PORTA+0, 4
	GOTO       L_main35
	GOTO       L_main34
L_main35:
;Traffic_Light.c,87 :: 		automatic();
	CALL       _automatic+0
;Traffic_Light.c,88 :: 		manual();
	CALL       _manual+0
;Traffic_Light.c,89 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
