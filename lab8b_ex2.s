    .text
    .global _start

_start:
    LDR R0, =array        @ Load array address
    MOV R1, #5            @ Array size
    MOV R2, #0            @ Sum
    MOV R3, #0            @ Counter

loop2:
    CMP R3, R1            @ Compare counter with size
    BEQ end2              @ If equal, end loop
    LDR R4, [R0], #4      @ Load value and increment address
    ADD R2, R2, R4        @ Add to sum
    ADD R3, R3, #1        @ Increment counter
    B loop2               @ Repeat loop

end2:

.data
array: .word 1,2,3,4,5    @ Test array
