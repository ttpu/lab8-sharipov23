    .global _start
_start:
    MOV R0, #0            @ Counter/value to store
    LDR R1, =0x40000000   @ Base address
    MOV R2, #10           @ Loop limit

loop:
    STR R0, [R1], #4      @ Store value and increment address
    ADD R0, R0, #1        @ Increment counter
    CMP R0, R2            @ Compare with limit
    BLT loop              @ Branch if less than
