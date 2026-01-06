BITS 64
global _start

section .data
filename db 'teste1.bin', 0

section .text
_start:

mov rax, 2	;sys_open
lea rdi, [rel filename]
xor rsi, rsi	;O_rdonly
xor rdx, rdx
syscall

mov r12, rax	;salva fd

;pegando tamanho do arquivo
sub rsp, 144	;struct stat
mov rdi, r12
mov rsi, rsp
mov rax, 5
syscall

mov r13, [rsp + 48]	;st_size
add rsp, 144

;mapeando memoria executavel(mmap)
mov rax, 9	;sys_mmap
xor rdi, rdi	;addr = null
mov rsi, r13	;size
mov rdx, 7	;prot_read | write | exec
mov r10, 34	;map_private | map_anonymous
xor r8, r8
xor r9, r9
syscall

mov r14, rax	;buffer executavel

;lendo o arquivo buffer
mov rax, 0	;sys_read
mov rdi, r12	;fd
mov rsi, r14	;destino
mov rdx, r13	;tamanho
syscall

;fechando o arquivo
mov rax, 3	;sys_close
mov rdi, r12
syscall

call r14

mov rax, 60 ;sys_exit
xor rdi, rdi
syscall

