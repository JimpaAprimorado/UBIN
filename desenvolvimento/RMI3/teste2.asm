
BITS 64
;Ubins de inicialização apenas
lea r15, [rel $$ + 7]	;7 bytes r15 agora tem o endereço da proxima instrução

;desconsiderar os 7 bytes acima pois ele coleta o ponteiro do proximo comando abaixo que é o real 1º comando do programa
;perceba que o comando acima pode ser removido da ram apos ser executado, pois não mais sera util

;saltando para @CPU_1 = IUbins (Ubins de controle de fluxo) jmp.start
;entenda r14 como aonde estou, e r15 para onde quero ir
add r15, 213			;7 bytes resultado de r15 será: daqui(marco 0) ate instrução desejada(jmp.start)=10+29+150+6+18=213
jmp r15					;3 bytes					

;estes 2 comando eu medi deu 10 bytes

;PARTE DOS @UBINS:
;fazendo start.bin
sub rsp, 4096 			;7 bytes se estiver dando segfault experimente substituir esta linha por algo inutil que ocupa 7bytes como: add r12, 230
and rsp, -16									
mov rax, 0x0000000000000000						
mov rbx, 0x0000000000000000						
mov rcx, 0x0000000000000000						
;fazendo jmpr14
jmp r14											

;start.bin + jmpr14 = 29bytes

;print.bin, removi os comentarios para não ficar muito poluido
movdqa [rsp+16], xmm0 							
movdqa [rsp+32], xmm1 							
mov [rsp+40], rbx								
mov [rsp+48], rcx								
mov rcx, rax 									
mov rbx, 0x4040404040404040	
mov rdi, 0x0F0F0F0F0F0F0F0F						
and rax, rdi 									
xor rax, rbx 									
movq xmm0, rax 									
mov rax, rcx 									
shr rax, 4										
and rax, rdi									
xor rax, rbx									
movq xmm1, rax									
punpcklbw xmm1, xmm1							
punpcklbw xmm0, xmm0							
psllw xmm1, 8 									
psrlw xmm0, 8 									
por xmm1, xmm0									
movdqa [rsp], xmm1								
mov rax, 1										
mov rdi, 1										
lea rsi, [rsp]									
mov rdx, 16										
syscall											
movdqa xmm0, [rsp+16]							
movdqa xmm1, [rsp+32]							
mov rax, rcx									
mov rbx, [rsp+40]								
mov rcx, [rsp+48]								
;fazendo jmpr14
jmp r14											

;este print+jmpr14 contem 150 bytes

;fazendo s1.bin
add rax, rbx 									
;fazendo jmpr14
jmp r14											

;s1+jmpr14 = 6 bytes

;fazendo exit.bin
add rsp, 4096									
mov rax, 60										
xor rdi, rdi									
syscall											
ret												

;exit.bin = 18 bytes

;@MUBINS: ainda não tem.(print ja é uma especie de MUbin)
;PARTE DOS @EST removido e encadeado dirétamente nos IUbins de fluxo como rax(@EST[1]):

;PARTE DE @CPU_1:
;fazendo IUbin jmp(start)
mov r14, r15				;3 bytes copia o endereço antes desta instrução
add r14, 17					;4 bytes adiciona os 17 bytes deste IUbin para cair no proximo IUbin.
sub r15, 203				;7 bytes inicio do IUbin start - 203 bytes leva ao inicio de start.bin,			
jmp r15						;3 bytes CPU vá para start.bin quando voltar via r14 cairá em IUbin rax				

;IUbin jmp = 17 bytes

;fazendo IUbin rax(@EST[1])
mov rax, 0x0000000000000014	;5 bytes se quiser alterar valores é aqui, desde que não ultrapasse 5 bytes vai funcionar
;fazendo IUbin rbx(@EST[2]) 
mov rbx, 0x0000000000000028	;5 bytes aqui tambem altera valores a serem somados

;os 2 IUbins rax+rbx = 10 bytes

;fazendo IUbin jmp(s1)
add r14, 24					;4 bytes r14 esta apontando para inicio deste IUbin então agora ele tem que ir para 10+14				
add r15, 179				;7 bytes r15 apontava para start.bin então para chegar em s1.bin = 29+150
jmp r15						;3 bytes

;IUbin jmp = 14 bytes

;fazendo IUbin jmp(print)
add r14, 14					;4 bytes r14 esta apontando para inicio deste IUbin então agora ele tem que ir para 14				
sub r15, 150				;7 bytes r15 apontava para s1.bin então para chegar em print.bin = -150
jmp r15						;3 bytes						

;IUbin jmp = 14 bytes

;fazendo IUbin jmp(exit)
;como este é o ultimo IUbin ele não mais utilizará retorno r14.
add r15, 156				;7 bytes r15 apontava para print.bin então para chegar em exit.bin = 150+6
jmp r15						;3 bytes							

;IUbin jmp = 10 bytes

;total de bytes final do MUbin completo = 285



