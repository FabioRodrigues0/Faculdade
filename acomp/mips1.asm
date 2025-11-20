.text
        #criaçao e atribuiçao de variaveis
        li $s0, 23
        li $s1, 77
        
        sub $t0, $0, $s1
        subi $t1, $t0, -21
        
        li $v0, 1
        move $a0, $t1
        syscall
        
        # bloco para terminar execuçao senão fica em loop
        li $v0, 10
        syscall