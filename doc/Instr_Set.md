TINY CPU instruction set
========================

Note: this is google translation version, I am lazy now.

|No.| Instruction  | 15    | 14   |  13 |    12    | 11   |  10   |  9    |  8    |  7   |   6  |    5   |   4    |  3   |   2     | 1  |Hex   |  Behavior
|---|----------------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------|-------
|1  | HALT           | 0     | 0     | 0    |  0  |    -     | -    |  -    |  -    |  -    |  -   |   -  |    -   |   -    |  -   |   -     | 0000 |  Stop
|2  | PUSHI I        | 0     | 0     | 0    |  1  |    I     | I    |  I    |  I    |  I    |  I   |   I  |    I   |   I    |  I   |   I     | 1000+I    |   Push the immediate value I onto the stack
|3  | PUSH A         | 0     | 0     | 1    |  0  |    A     | A    |  A    |  A    |  A    |  A   |   A  |    A   |   A    |  A   |   A     | 2000+A    |   Push the value of address A to the stack
|4  | POP A          | 0     | 0     | 1    |  1  |    A     | A    |  A    |  A    |  A    |  A   |   A  |    A   |   A    |  A   |   A     | 3000+A    |   Stack top stored at address A
|5  | JMP A          | 0     | 1     | 0    |  0  |    A     | A    |  A    |  A    |  A    |  A   |   A  |    A   |   A    |  A   |   A     | 4000+A    |   Branch to address A
|6  | JZ A           | 0     | 1     | 0    |  1  |    A     | A    |  A    |  A    |  A    |  A   |   A  |    A   |   A    |  A   |   A     | 5000+A    |   If stack top is 0, branch to address A
|7  | JNZ A          | 0     | 1     | 1    |  0  |    A     | A    |  A    |  A    |  A    |  A   |   A  |    A   |   A    |  A   |   A     | 6000+A    |   If stack top is not 0 branch to address A
|8  | IN             | 1     | 1     | 0    |  1  |    -     | -    |  -    |  -    |  -    |  -   |   -  |    -   |   -    |  -   | -       | D000  | Push input port value onto stack
|9  | OUT            | 1     | 1     | 1    |  0  |    -     | -    |  -    |  -    |  -    |  -   |   -  |    -   |   -    |  -   |   -     | E000  | Write stack top to output buffer
|10 | OP f           | 1     | 1     | 1    |  1  |    -     | -    |  -    |  -    |  -    |  -   |   f  |    f   |   f    |  f   |   f     | F000+f|  Compute on the stack and store the result on the stack top
|11 |  ADD           | 1     | 1     | 1    |  1  |    -     | -    |  -    |  -    |  -    |  -   |   0  |    0   |   0    |  0   |   0     | F000  | Addition
|12 | SUB            | 1     | 1     | 1    |  1  |    -     | -    |  -    |  -    |  -    |  -   |   0  |    0   |   0    |  0   |   1     | F001  | Subtraction
|13 | MUL            | 1     | 1     | 1    |  1  |    -     | -    |  -    |  -    |  -    |  -   |   0  |    0   |   0    |  1   |   0     | F002  | Multiplication
|14 | SHL            | 1     | 1     | 1    |  1  |    -     | -    |  -    |  -    |  -    |  -   |   0  |    0   |   0    |  1   |   1     | F003  | Shift left
|15 | SHR            | 1     | 1     | 1    |  1  |    -     | -    |  -    |  -    |  -    |  -   |   0  |    0   |   1    |  0   |   0     | F004  | Shift right
|16 | BAND           | 1     | 1     | 1    |  1  |    -     | -    |  -    |  -    |  -    |  -   |   0  |    0   |   1    |  0   |   1     | F005  | Bitwise AND
|17 | BOR            | 1     | 1     | 1    |  1  |    -     | -    |  -    |  -    |  -    |  -   |   0  |    0   |   1    |  1   |   0     | F006  | Bitwise OR
|18 | BXOR           | 1     | 1     | 1    |  1  |    -     | -    |  -    |  -    |  -    |  -   |   0  |    0   |   1    |  1   |   1     | F007  | Bitwise exclusive OR
|19 | AND            | 1     | 1     | 1    |  1  |    -     | -    |  -    |  -    |  -    |  -   |   0  |    1   |   0    |  0   |   0     | F008  | Logical AND
|20 | OR             | 1     | 1     | 1    |  1  |    -     | -    |  -    |  -    |  -    |-     |  0   |   1    |    0   |   0  |  1      |   F009  | OR
|21 | EQ             | 1     | 1     | 1    |  1  |    -     | -    |  -    |  -    |  -    |-     |  0   |   1    |    0   |   1  |  0      |   F00A  | equal
|22 | NE             | 1     | 1     | 1    |  1  |    -     | -    |  -    |  -    |  -    |-     |  0   |   1    |    0   |   1  |  1      |   F00B  | Not equal
|23 | GE             | 1     | 1     | 1    |  1  |    -     | -    |  -    |  -    |  -    |-     |  0   |   1    |    1   |   0  |  0      |   F00C  | Greater than or equal to
|24 | LE             | 1     | 1     | 1    |  1  |    -     | -    |  -    |  -    |  -    |-     |  0   |   1    |    1   |   0  |  1      |   F00D  | Less than or equal to
|25 | GT             | 1     | 1     | 1    |  1  |    -     | -    |  -    |  -    |  -    |-     |  0   |   1    |    1   |   1  |  0      |   F00E  | large
|26 | LT             | 1     | 1     | 1    |  1  |    -     | -    |  -    |  -    |  -    |-     |  0   |   1    |    1   |   1  |  1      |   F00F  | small
|27 | NEG            | 1     | 1     | 1    |  1  |    -     | -    |  -    |  -    |  -    |  -   |   1  |    0   |   0    |  0   |   0     | F010 |  Sign inversion
|28 | BNOT           | 1     | 1     | 1    |  1  |    -     | -    |  -    |  -    |  -    |  -   |   1  |    0   |   0    |  0   |   1     | F011 | Flip by bit
|29 | NOT            | 1     | 1     | 1    |  1  |    -     | -    |  -    |  -    |  -    |  -   |   1  |    0   |   0    |  1   |   0     | F012 |  Logical negation
