.data
    menu: .asciiz "Escolha: 1-Celsius para Fahrenheit  2-Fahrenheit para Celsius\nDigite 1 ou 2: "
    msg_temp: .asciiz "Digite a temperatura: "
    msg_result_f: .asciiz "Resultado em Fahrenheit: "
    msg_result_c: .asciiz "Resultado em Celsius: "

.text
.globl main

main:
    # Mostra o menu
    li $v0, 4
    la $a0, menu
    syscall
    
    # Lê a escolha do usuário
    li $v0, 5
    syscall
    move $t0, $v0       # escolha em $t0
    
    # Se escolha = 1, vai para celsius_para_fahrenheit
    # Se escolha = 2, vai para fahrenheit_para_celsius
    beq $t0, 1, celsius_para_fahrenheit
    beq $t0, 2, fahrenheit_para_celsius
    j fim               # se não for 1 nem 2, termina

celsius_para_fahrenheit:
    # Pede temperatura
    li $v0, 4
    la $a0, msg_temp
    syscall
    
    li $v0, 5
    syscall
    move $t1, $v0       # temperatura em $t1
    
    # Converte: F = (C * 9) / 5 + 32
    li $t2, 9
    mult $t1, $t2
    mflo $t3
    
    li $t2, 5
    div $t3, $t2
    mflo $t3
    
    li $t2, 32
    add $t3, $t3, $t2
    
    # Mostra resultado
    li $v0, 4
    la $a0, msg_result_f
    syscall
    
    li $v0, 1
    move $a0, $t3
    syscall
    
    j fim

fahrenheit_para_celsius:
    # Pede temperatura
    li $v0, 4
    la $a0, msg_temp
    syscall
    
    li $v0, 5
    syscall
    move $t1, $v0       # temperatura em $t1
    
    # Converte: C = (F - 32) * 5 / 9
    li $t2, 32
    sub $t3, $t1, $t2
    
    li $t2, 5
    mult $t3, $t2
    mflo $t3
    
    li $t2, 9
    div $t3, $t2
    mflo $t3
    
    # Mostra resultado
    li $v0, 4
    la $a0, msg_result_c
    syscall
    
    li $v0, 1
    move $a0, $t3
    syscall

fim:
    li $v0, 10
    syscall
