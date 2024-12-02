    .global _start
_start:
    MOV R0, #10           @ Load value 10 into R0
    LDR R1, =0x20000000   @ Load memory address into R1
    STR R0, [R1]          @ Store R0's value at address in R1
