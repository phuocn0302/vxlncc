org 0000h

MAIN:
		MOV 	TMOD,#10h 	; chon Timer 1, che do 1
HERE:	
		CPL		P1.5
		ACALL	DELAY
		SJMP	HERE		; nap lai TH, TL
		RET
; tao tre
DELAY: 
		MOV 	TH1, #0D8h
		MOV 	TL1, #0F0h
		SETB 	TR1 			; khoi dong Timer 01
AGAIN: 	JNB 	TF1, AGAIN 		; kiem tra co Timer 1
		CLR 	TR1 			; xóa TR1 (dung Timer 1)
		CLR 	TF1 			; xoa TF1
		RET
end
