    .text
    .global _start

_start:
    MOV R1, #5            @ N = 5 (generate first 5 even numbers)
    MOV R2, #0            @ Current number (starts from 0)
    LDR R6, =result       @ Load array address
    MOV R3, #0            @ Counter

loop1:
    CMP R3, R1            @ Compare counter with N
    BEQ end1              @ If equal, end loop
    STR R2, [R6], #4      @ Store number and increment address
    ADD R2, R2, #2        @ Next even number
    ADD R3, R3, #1        @ Increment counter
    B loop1               @ Repeat loop

end1:

.data
result: .skip 40          @ Reserve space for 10 integers
