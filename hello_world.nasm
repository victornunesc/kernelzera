; "hello world" em arquitetura de x64

section .data
message: db 'Hello World!', 0xa, 0xd

section .text

global _start:
_start:
        mov rax, 4          ; numero da syscall write
        mov rbx, 1          ; local onde vamos escrever os bytes (stdout = 1)
        mov rcx, message    ; endereco de inicio da string
        mov rdx, 13         ; quantidade de bytes
        int 0x80            ; chamada para syscall (interrupcao)

        mov rax, 1          ; numero da syscall exit
        int 0x80            ; chamada para syscall (interrupcao)