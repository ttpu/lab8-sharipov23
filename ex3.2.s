    .global _start
_start:
    MOV R0, #0            @ Initialize sum to 0
    MOV R2, #0            @ Initialize counter

loop:
    CMP R2, R1            @ Compare counter with N
    BGT end               @ If counter > N, end
    ADD R0, R0, R2        @ Add counter to sum
    ADD R2, R2, #1        @ Increment counter
    B loop               @ Branch back to loop

end:
    @ R0 now contains the sum
