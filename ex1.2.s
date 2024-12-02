```arm
    .global _start
_start:
    LDR R1, =0x20000000   @ Load memory address into R1
    LDR R0, [R1]          @ Load value from memory into R0
```
