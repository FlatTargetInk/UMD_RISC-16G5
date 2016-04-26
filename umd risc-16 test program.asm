; ---------------------------------------------------------------
; Assembly Test Program for verification of UMD RISC-16 hardware
; Engineer: Christopher Parks (cparks13@live.com)
; ISA : UMD RISC-16 Primary and Special instructions
; ---------------------------------------------------------------

;ADD, SUB, AND, OR, MOV, ADDI, ANDI
ADDI R0, 1  ; POST-EXEC: [R0 = 1] 														[RESULT =   1]	[FLAGS: NVZC]
ADD  R1, R0 ; POST-EXEC: [R0 = 1, R1 = 1] 												[RESULT =   1]	[FLAGS: 0000]
SUB  R2, R1 ; POST-EXEC: [R0 = 1, R1 = 1, R2 = -1] 										[RESULT =  -1]	[FLAGS: 1000]
AND  R3, R1 ; POST-EXEC: [R0 = 1, R1 = 1, R2 = -1] 										[RESULT =   0]	[FLAGS: 0010]
OR   R1, R0	; POST-EXEC: [R0 = 1, R1 = 1, R2 = -1] 										[RESULT =   1] 	[FLAGS: 0000]
MOV  R3, R1	; POST-EXEC: [R0 = 1, R1 = 1, R2 = -1, R3 = 1] 								[RESULT =   1]	[FLAGS: 0000]
ANDI R2, -1	; POST-EXEC: [R0 = 1, R1 = 1, R2 = -1, R3 = 1] 								[RESULT =  -1] 	[FLAGS: 1000]
SL   R3,  1 ; POST-EXEC: [R0 = 1, R1 = 1, R2 = -1, R3 = 2] 								[RESULT =   2] 	[FLAGS: 0000]
SR   R3,  1 ; POST-EXEC: [R0 = 1, R1 = 1, R2 = -1, R3 = 1] 								[RESULT =   1] 	[FLAGS: 0000]
;END ADD, SUB, AND, OR, MOV, ADDI, ANDI

; LW/SW
ADDI R4, 10 ; POST-EXEC: [R0 = 1, R1 = 1, R2 = -1, R3 = 1, R4 = 10] 					[RESULT =  10]	[FLAGS: 0000]
SW	 R4, 10 ; POST-EXEC: [R0 = 1, R1 = 1, R2 = -1, R3 = 1, R4 = 10] 					[RESULT =   ?]	[FLAGS: 0000]
ANDI  R4,  0 ; POST-EXEC: [R0 = 1, R1 = 1, R2 = -1, R3 = 1] 							[RESULT =   0]	[FLAGS: 0010]
LW	 R4, 10 ; POST-EXEC: [R0 = 1, R1 = 1, R2 = -1, R3 = 1, R4 = 10] 					[RESULT =  10]	[FLAGS: 0000]
; END LW/SW

; LWV/SWV
ADDI R5, 8 ; POST-EXEC: [R0 = 1, R1 = 1, R2 = -1, R3 = 1, R4 = 10, R5 = 8] 				[RESULT =   8] 	[FLAGS: 0000]
SWV R5, 00, 64; POST-EXEC: [R0 = 1, R1 = 1, R2 = -1, R3 = 1, R4 = 10, R5 = 8] 			[RESULT =   ?]	[FLAGS: 0000]
ANDI R5, 0 ; [R0 = 1, R1 = 1, R2 = -1, R3 = 1, R4 = 10] 								[RESULT =   0] 	[FLAGS: 0010]
LWV R5, 00, 64 ; POST-EXEC: [R0 = 1, R1 = 1, R2 = -1, R3 = 1, R4 = 10, R5 = 8] 			[RESULT =   8]	[FLAGS: 0000]
; END LWV/SWV

JAL 2 ;Skip next instruction
ADDI R6, 100 ; Doesn't execute
ADDI R6,  50 ; POST-EXEC: [R0 = 1, R1 = 1, R2 = -1, R3 = 1, R4 = 10, R5 = 8, R6 = 50] 	[RESULT =  50] 	[FLAGS: 0000]
SUB R6, R6 ; 
BRA 2, 2 ; Skip next instruction
ADDI R6,  3839 ; Doesn't execute
ADDI R6, 200 ; POST-EXEC: [R0 = 1, R1 = 1, R2 = -1, R3 = 1, R4 = 10, R5 = 8, R6 = 200] 	[RESULT = 200] 	[FLAGS: 0000]
RTL ; Next instruction to run will be ADDI R6, 3839. ; POST-EXEC: [R0 = 1, R1 = 1, R2 = -1, R3 = 1, R4 = 10, R5 = 8, R6 = 4039] [RESULT = 4039] [FLAGS: 0001]

;; After this RTL the program is unpredictable and will start acting weird.