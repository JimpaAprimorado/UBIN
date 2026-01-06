BITS 64
GLOBAL _start

_start:
;forçando alinhamento
and rsp, -16

;fazendo backup
movdqa [rsp+16], xmm0 				
movdqa [rsp+32], xmm1 
;rax não precisa de backup pq vai pra rcx			
mov [rsp+40], rbx
mov [rsp+48], rcx

;rax abaixo é só teste e deverá ser removido, pois ele ja vem como entrada de outro Ubin.
mov rax, 0x0123456789ABCDEF ;em rax fica assim EFCDAB8967452301 = teste, se quiser testar outros valores de entrada escreva aqui


mov rcx, rax ;fazendo copia

mov rbx, 0x4040404040404040 ;prepara rbx para aplicar interpretação
mov rdi, 0x0F0F0F0F0F0F0F0F ;prepara rdi para mascara de remoção

and rax, rdi ;zerando nibles altos = 0F 0D 0B 09 07 05 03 01
xor rax, rbx ;agora os 4bits altos = 4F 4D 4B 49 47 45 43 41

movq xmm0, rax ;xmm0 fica: 00000000 4F 4D 4B 49 47 45 43 41


mov rax, rcx ;rax = EF CD AB 89 67 45 23 01
shr rax, 4; desloco = 0E FC DA B8 96 74 52 30
and rax, rdi ;rax agora fica 0E 0C 0A 08 06 04 02 00

xor rax, rbx ;4E 4C 4A 48 46 44 42 40

movq xmm1, rax ;xmm1 fica: 00000000 4E 4C 4A 48 46 44 42 40

punpcklbw xmm1, xmm1 ;fica: 4E 4E 4C 4C 4A 4A 48 48 46 46 44 44 42 42 40 40
punpcklbw xmm0, xmm0 ;fica: 4F 4F 4D 4D 4B 4B 49 49 47 47 45 45 43 43 41 41


;deslocando xmm1
psllw xmm1, 8 ; fica 00 4E 00 4C 00 4A 00 48 00 46 00 44 00 42 00 40
;inverto a forma de montagem para que ao gravar em rsp com xmm1 seja legivel da forma correta
psrlw xmm0, 8 ; fica 4F 00 4D 00 4B 00 49 00 47 00 45 00 43 00 41 00
por xmm1, xmm0					;junta os 2 ficando assim:
;xmm1 = 4E 4F 4C 4D 4A 4B 48 49 46 47 44 45 42 43 40 41


movdqa [rsp], xmm1 ;transferindo xmm1 para rsp
;em rsp fica = 4F4E 4D4C 4B4A 4948 4746 4544 4342 4140
;ordem de montagem de xmm em RSP = 16bits cada caractere ocupa 4 então são de 4 em 4

;preparando syscall
mov rax, 1
mov rdi, 1
lea rsi, [rsp]						;pegando ponteiro de rsp e gravando em rsi
mov rdx, 16							;tamanho do dado a ser lido em bytes

;enviando para SO
syscall
;saindo da syscall
mov rax, 60
xor rdi, rdi
syscall

movdqa xmm0, [rsp+16]			;devolve valor antes do print
movdqa xmm1, [rsp+32]			;devolve valor antes do print
mov rax, rcx				;devolve valor antes do print
mov rbx, [rsp+40]
mov rcx, [rsp+48]

ret	;aqui é nescessário por enquanto.

