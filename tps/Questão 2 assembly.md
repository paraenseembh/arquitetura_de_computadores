```assembly
.data
    prompt1: .asciiz "Digite o primeiro numero: "
    prompt2: .asciiz "Digite o segundo numero: "
    resultado_msg: .asciiz "A soma é: "

.text
.globl main

main:
    # Solicita o primeiro número
    li $v0, 4              # código do syscall para imprimir string
    la $a0, prompt1        # carrega o endereço da string
    syscall

    li $v0, 5              # código do syscall para ler inteiro
    syscall
    move $t0, $v0          # armazena o primeiro número em $t0

    # Solicita o segundo número
    li $v0, 4
    la $a0, prompt2
    syscall

    li $v0, 5
    syscall
    move $t1, $v0          # armazena o segundo número em $t1

    # Soma os dois números
    add $t2, $t0, $t1      # $t2 = $t0 + $t1

    # Imprime a mensagem do resultado
    li $v0, 4
    la $a0, resultado_msg
    syscall

    # Imprime o resultado da soma
    li $v0, 1              # código para imprimir inteiro
    move $a0, $t2
    syscall

    # Finaliza o programa
    li $v0, 10             # código para sair do programa
    syscall
```

![Q2](https://github.com/paraenseembh/arquitetura_de_computadores/blob/main/tps/Q2%20assembly.png?raw=true)
