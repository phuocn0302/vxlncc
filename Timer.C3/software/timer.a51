org 0000h

MAIN:
		MOV 	TMOD,#20h 	; chon Timer 1, che do 2
		MOV 	TH1, #83h
HERE:	
		CPL		P1.1
		ACALL	DELAY
		SJMP	HERE		; nap lai TH, TL
		RET
; tao tre
DELAY: 
		MOV		R0, #4
		SETB 	TR1 			; khoi dong Timer 01
AGAIN: 	JNB 	TF1, AGAIN 		; kiem tra co Timer 1
		CLR 	TF1 			; xoa TF1
		CPL		P1.0
		DJNZ	R0,	AGAIN
		CLR 	TR1
		RET
end
