# Increment instructions
```
inc count        ; Increment the memory variable COUNT
```

# Assignment insructions
```
mov total, 48    ; Write the value 48 in the memory variable TOTAL
mov al, 10       ; Write 10 to the AL register
mov edx, len     ; Write len to the EDX register
```

# Integer arithmetic instructions
An ADD or SUB operation sets or clears the overflow and carry flags.

CMP - subtracts one operand from the other for comparing whether the operands are equal or not.
It does not disturb the destination or source operands.
It is used along with the conditional jump instruction for decision making.

The MUL and IMUL instructions affect the Carry and Overflow flags.

DIV/IDIV - compute quotient and remainder in one instruction.

```
add ah, bh       ; Add the content of the BH register into the AH register
add marks, 10    ; Add 10 to the variable MARKS
```

# Shift instructions
SHL

# Boolean instructions
AND, TEST, OR, XOR, NOT

AND is often used for clearing bits or masking.

The TEST instruction works same as the AND operation, but unlike AND instruction, it does not change the first operand.

OR is often used for setting bits or enum sets.

XORing an operand with itself changes the operand to 0. This is used to clear a register.

These instructions compare or match bits of the operands and set the CF, OF, PF, SF and ZF flags.

```
and mask1, 128   ; Perform AND operation on the variable MASK1 and 128
```

If you want to check whether a given number is odd or even, a simple test would be to check the least significant bit of the number. If this is 1, the number is odd, else the number is even.

```
AND AL, 01H
JZ EVEN_NUMBER
```


# Control flow instructions

## Branching instructions
Branching instructions change value in IP register.

JMP
J<condition>

Conditional jump instructions used on signed data used for arithmetic operations:

Instruction|Description|Flags tested
-----------|-----------|------------|
JE/JZ|Jump Equal or Jump Zero|ZF
JNE/JNZ|Jump not Equal or Jump Not Zero|ZF
JG/JNLE|Jump Greater or Jump Not Less/Equal|OF, SF, ZF
JGE/JNL|Jump Greater/Equal or Jump Not Less|OF, SF
JL/JNGE|Jump Less or Jump Not Greater/Equal|OF, SF
JLE/JNG|Jump Less/Equal or Jump Not Greater|OF, SF, ZF

Conditional jump instructions used on unsigned data used for logical operations:

Instruction|Description|Flags tested
-----------|-----------|-------------
JE/JZ|Jump Equal or Jump Zero|ZF
JNE/JNZ|Jump not Equal or Jump Not Zero|ZF
JA/JNBE|Jump Above or Jump Not Below/Equal|CF, ZF
JAE/JNB|Jump Above/Equal or Jump Not Below|CF
JB/JNAE|Jump Below or Jump Not Above/Equal|CF
JBE/JNA|Jump Below/Equal or Jump Not Above|AF, CF

Conditional jump instructions which have special uses:

Instruction|Description|Flags tested
-----------|-----------|------------
JXCZ|Jump if CX is Zero|none
JC|Jump If Carry|CF
JNC|Jump If No Carry|CF
JO|Jump If Overflow|OF
JNO|Jump If No Overflow|OF
JP/JPE|Jump Parity or Jump Parity Even|PF
JNP/JPO|Jump No Parity or Jump Parity Odd|PF
JS|Jump Sign (negative value)|SF
JNS|Jump No Sign (positive value)|SF

## Looping instructions
Loops can be implemented using jumps only.

```assembly
MOV CL, 10
L1:
<LOOP-BODY>
DEC CL
JNZ L1
```

LOOP - checks loop counter in ECX.

```assembly
mov ECX, 10
l1:
<loop body>
loop l1
```

# Stack instructions
PUSH, POP

# Flags instructions

PUSHF, POPF
CLC, STC
CLD, STD

# String instructions

MOVS, LODS, STOS, CMPS, SCAS
REP, REPE/REPZ, REPNE/REPNZ

# Call kernel
```
int 0x80
```
