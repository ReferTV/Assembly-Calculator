section .data
    message db 'Wynik: %d', 10, 0
    input_prompt db 'Podaj pierwszą liczbę: ', 0
    output_format db '%d', 0

section .bss
    num1 resd 1
    num2 resd 1
    result resd 1

section .text
    global _start

_start:
    mov rdi, 1
    mov rsi, input_prompt
    mov rdx, 22
    mov rax, 1
    syscall

    mov rdi, 0
    mov rsi, num1
    mov rdx, 4
    mov rax, 0
    syscall

    mov rdi, 1
    mov rsi, input_prompt
    mov rdx, 22
    mov rax, 1
    syscall

    mov rdi, 0
    mov rsi, num2
    mov rdx, 4
    mov rax, 0
    syscall

    mov eax, [num1]
    mov ebx, [num2]

    mov edi, 1

    cmp edi, 1
    je add
    cmp edi, 2
    je subtract
    cmp edi, 3
    je multiply
    cmp edi, 4
    je divide
    jmp exit_program

add:
    add eax, ebx
    jmp print_result

subtract:
    sub eax, ebx
    jmp print_result

multiply:
    imul eax, ebx
    jmp print_result

divide:
    cdq
    idiv ebx
    jmp print_result

print_result:
    mov rdi, 1
    mov rsi, message
    mov rdx, 11
    mov rax, 1
    syscall

exit_program:
    mov eax, 60
    xor edi, edi
    syscall
