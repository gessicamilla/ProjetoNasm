section .text
    global_start            ;precisa ser adicionado para o gerador do executavel saiba onde começa

_start:
    mov edx,len             ;tamanho do texto.  len(length-> comprimento)
    mov ecx,msg             ;mensagem de texto para exibir
    mov ebx,1               ;descritor de arquivo
    mov eax,4               ;chamada para escrever o texto na tela
    int 0x80                ;chama o terminal para exibir o texto

section .data               ;seção de dados
msg db 'Hello, world!'      ;mensagem que deve aparecer
len equ $ - msg             ;obtem a quantidade de caracteres da mensagem