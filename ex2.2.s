    .global _start
_start:
    MOV R0, #10           @ First value
    MOV R1, #20           @ Second value
    CMP R0, R1            @ Compare R0 and R1
    MOV R2, #0            @ Initialize flag to 0
    MOVGT R2, #1          @ If R0 > R1, set flag to 1
    LDR R3, =0x30000000   @ Load memory address
    STR R2, [R3]          @ Store flag value in memory
