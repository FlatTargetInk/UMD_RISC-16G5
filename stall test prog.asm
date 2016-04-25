; StallControlModule test program
; Written by: Christopher Parks
; For: UMD RISC-16 ISA
; Description: Assembly program written to verify the stall control module works as expected
ADDI R0, 1
ADDI R0, 1
ADDI R0, 1
ADDI R0, 1
ADDI R0, 1
ADDI R0, 1
ADDI R0, 1 ; R0 = 7
SUB R0, 8 ; R0 = -1 N flag set
BRA 8,2 ; Skips ADDI R0,1 and goes to ADDI R1,1
ADDI R0, 1 ; R0 = 0
ADDI R1, 1 ; R1 = 1
SUBI R0, 1 ; R0 = 0 Z flag set
BRA 2,2 ; Skips next instruction and goes to ADDI R3,1
ADDI R2,1 ; Gets skipped
ADDI R3,65536 ; R3 = ??? V flag set
BRA 4,2 ; Skips next instruction and goes to ADDI R5,1
ADDI R4,1
ADDI R5,1 ; R5 = 1
ADDI R5,1 ; R5 = 1+1, requires carry. C flag set
BRA 1,2 ; Skips next instruction and goes to ADDI R7,1
ADDI R6,1
ADDI R7,1