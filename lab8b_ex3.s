    .text
    .global _start

_start:
    LDR R0, =array        @ Array address
    MOV R1, #5            @ Array size
    BL find_minmax        @ Call function
    MOV R2, R0            @ Store min
    MOV R3, R1            @ Store max

end3:
    B end3               @ Infinite loop

find_minmax:
    PUSH {R4-R7}         @ Save registers
    LDR R4, [R0]         @ Load first element
    MOV R5, R4           @ Initialize min
    MOV R6, R4           @ Initialize max
    MOV R7, #1           @ Counter starts from 1

loop3:
    CMP R7, R1           @ Compare counter with size
    BEQ done             @ If equal, done
    LDR R4, [R0, R7, LSL #2]  @ Load next element
    CMP R4, R5           @ Compare with min
    MOVLT R5, R4         @ Update min if less
    CMP R4, R6           @ Compare with max
    MOVGT R6, R4         @ Update max if greater
    ADD R7, R7, #1       @ Increment counter
    B loop3              @ Repeat loop

done:
    MOV R0, R5           @ Return min in R0
    MOV R1, R6           @ Return max in R1
    POP {R4-R7}         @ Restore registers
    BX LR               @ Return

.data
array: .word 4,2,7,1,5   @ Test array
