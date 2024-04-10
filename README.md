# Simple Calculator in x86_64 Assembly Language

## Description
This program is a simple calculator written in x86_64 assembly language. It allows performing basic mathematical operations on two integers.

## Program Structure
The program consists of three sections: .data, .bss, and .text.

- The .data section contains text constants used for displaying messages and formatting the result.
- The .bss section reserves space for three 32-bit integers, which will store the values entered by the user and the result of the operations.
- The .text section contains the actual program code, including input/output handling and mathematical operations.

## Usage Instructions
The program prompts the user for two integers and the operation number to perform (1 - addition, 2 - subtraction, 3 - multiplication, 4 - division). After entering the numbers and the operation number, the program returns the result of the operation.

## How to Run
To compile and run the program, follow these steps:

1. Copy the above source code into a file with a `.asm` extension.
2. Compile the code using an assembler, e.g., `nasm -f elf64 calculator.asm`.
3. Link the code using the ld linker, e.g., `ld -o calculator calculator.o`.
4. Run the program with the command `./calculator`.

## License
This project is licensed under the MIT License. See the LICENSE file for details.

