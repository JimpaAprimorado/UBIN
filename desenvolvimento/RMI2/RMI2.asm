section .data
files:
    dq file1
    dq file2
    dq file3
    dq file4
    dq file5
    dq 0          ; terminador

file1 db "start.bin", 0
file2 db "s1.bin", 0
file3 db "s2.bin", 0
file4 db "print.bin", 0
file5 db "exit.bin", 0

BITS 64
global _start

section .text

_start:
    ; --- mmap buffer executável (64 KB) ---
    mov rax, 9              ; sys_mmap
    xor rdi, rdi            ; addr = NULL
    mov rsi, 65536          ; tamanho, pedido para SO me entregar bytes de memoria virtual
    mov rdx, 7              ; PROT_READ | WRITE | EXEC
    mov r10, 34             ; MAP_PRIVATE | MAP_ANONYMOUS
    xor r8, r8
    xor r9, r9
    syscall

	;SO escreve em rax endereço base da região mapeada
    mov r14, rax            ; base do buffer
    mov r15, rax            ; cursor de escrita

    ;ponteiro da lista de arquivos
    lea rbx, [rel files]

.next_file:
    mov rdi, [rbx]
    test rdi, rdi
    jz .done_loading

    ; --- open ---
    mov rax, 2              ; sys_open
    xor rsi, rsi            ; O_RDONLY
    xor rdx, rdx
    syscall
    mov r12, rax            ; recebe de SO o resultado file descriptor

    ; --- fstat ---
    sub rsp, 144			;volta 144 bytes para SO escrever la
    mov rdi, r12
    mov rsi, rsp
    mov rax, 5              ; sys_fstat
    syscall
    mov r13, [rsp + 48]     ; SO escreveu em 144bytes (size fica nesta região do rsp que SO escreveu)
    add rsp, 144			;retorna ponteiro para posição correta para continuar

    ; --- read para buffer ---
    mov rax, 0              ; sys_read
    mov rdi, r12			;ainda contem file descriptor
    mov rsi, r15            ;r15 contem ponteiro da base de mmap, espaço na ram fornecido por SO
    mov rdx, r13			;r13 agora tem o size do ubin
    syscall

    ; --- fecha arquivo ---
    mov rax, 3              ; sys_close
    mov rdi, r12			;fd
    syscall

    ; --- avança cursor ---
    add r15, r13			;avança ponteiro com size do Ubin ja escrito, para montar proximo ubin.

    ; próximo nome
    add rbx, 8				;proximo file a ser aberto por syscall
    jmp .next_file

.done_loading:
    ; --- executa o buffer montado ---
    call r14

    ; --- encerra processo ---
    mov rax, 60             ; sys_exit
    xor rdi, rdi
    syscall
