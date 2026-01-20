# Comparação entre as Arquitectura MIPS e RISC-V: Níveis Físico, de Software e Códigos em Assembly

## Introdução

O porque decidi fazer a comparação entre MIPS e RISC-V deve-se ao facto de MIPS ser o mais utilizado em contextos de aprendizagem e o RISC-V ser a versão mais recente neste aspecto, sendo que o mesmo ao ser open-source pudera a ser mais inovador que a sua contrapartida.
As arquiteturas RISC enfatizam instruções simples e eficientes para melhorar o desempenho e reduzir o consumo de energia. O MIPS, desenvolvido na década de 1980 pela MIPS Technologies, foi amplamente utilizado em sistemas embedded, consoles de jogos e educação computacional. Em contraste, o RISC-V, criado em 2010 pela Universidade de Berkeley, é uma arquitetura open-source podendo haver alterações e promovendo inovação em hardware e software [2]. Ambas compartilham princípios RISC, como instruções de comprimento fixo (32 bits) e modelo load/store, mas diferem em modularidade, licenciamento e implementações [3]. 
## Comparação no Nível Físico (Hardware)

No nível físico, as diferenças entre MIPS e RISC-V residem na estrutura da arquitetura de hardware, incluindo o conjunto de instruções (ISA), codificação, modelo de memória e opções de implementação.

### Conjunto de Instruções e Codificação

O MIPS possui um ISA fixo e maior, com instruções complexas como load-linked/store-conditional (para atomicidade) e branch-likely (para optimização de pipelines) [7]. Em contrapartida, o RISC-V adopta uma abordagem minimalista e modular: um núcleo base pequeno (RV32I ou RV64I) com extensões opcionais (ex.: 'F' para ponto flutuante, 'V' para vetores) [9].

Os formatos de instruções diferem ligeiramente. No MIPS, campos imediatos são de 16 bits, enquanto no RISC-V são de 12 bits para operações aritméticas, com um split 20:12 para imediatos maiores via instruções como LUI (Load Upper Immediate) [10].

### Modelo de Memória e Controle de Fluxo

O MIPS utiliza um modelo de memória estrito (sequential consistency), garantindo que operações sejam vistas em ordem sequencial por padrão [9]. O RISC-V emprega um modelo relaxado, permitindo reordenação de acessos para melhor desempenho, mas exigindo barreiras explícitas (fences) ou instruções atômicas para consistência.

No controle de fluxo, o MIPS requer uma instrução de comparação separada (ex.: SLT) seguida de um branch condicional (BEQ/BNE contra zero) [10]. O RISC-V oferece branches comparativos diretos (ex.: BLT), simplificando o datapath e reduzindo latência em pipelines.

### Opções de Implementação

O MIPS é mariotariamente proprietário, com implementações em hardware rígido (hard cores) [9]. O RISC-V, sendo open-source, suporta implementações variadas: soft cores (em FPGA), hard cores proprietários ou customizados [11]. Recentemente, a MIPS Technologies pivotou para designs baseados em RISC-V [1].

| Aspecto                  | MIPS                                      | RISC-V                                    |
|--------------------------|-------------------------------------------|-------------------------------------------|
| Tamanho do ISA           | Maior e fixo                              | Menor e modular (base + extensões)        |
| Campos Imediatos         | 16 bits                                   | 12 bits (split 20:12 para maiores)        |
| Modelo de Memória        | Estrito (sequential consistency)          | Relaxado (requer fences)                  |
| Branches Condicionais    | Comparação separada + branch              | Branches comparativos diretos             |
| Implementações           | Proprietárias, hard cores                 | Open-source, customizáveis (soft/hard)    |

## Comparação no Nível de Software

### Ecossistema e Ferramentas

O MIPS possui um ecossistema maduro, mas em declínio, com suporte proprietário e ferramentas educacionais como MARS e SPIM [11]. O RISC-V tem um ecossistema em expansão, com ferramentas gratuitas como GNU toolchain, Spike, QEMU e suporte a Linux [11].

### Aplicações e Extensões

O MIPS é usado principalmente em ensino e sistemas legados [9]. O RISC-V ganha atração em pesquisa, IoT, IA e hardware customizado, com extensões flexíveis [11].

## Comparação de Códigos em Assembly

Os códigos em assembly de MIPS e RISC-V são semelhantes em mnemonics (ex.: ADD, LW), mas diferem em sintaxe, nomes de registadores e tratamento de condições [10]. O MIPS usa registadores como `$s0`, `$t0` (32 registadores gerais), enquanto o RISC-V usa `x0`–`x31` (com aliases ABI como `a0` para argumentos).

### Exemplo 1: Carregamento de Imediato Grande (0x12348000)

No MIPS, é comum usar `lui` seguido de `addi` para carregar valores de 32 bits:

```assembly
lui   $s0, 0x1234
addi  $s0, $s0, 0x8000
```

## No RISC-V (RV32I) 
O `lui` carrega 20 bits superiores deslocados 12 posições à esquerda. 
Neste caso exato o valor já fica correto sem necessidade de `addi` adicional:

```assembly
lui   x10, 0x12348      # x10 = 0x12348000
```

Na prática, para valores arbitrários de 32 bits, o assembler costuma gerar a combinação automaticamente quando se usa a pseudo-instrução `li`:

```assembly
li    x10, 0x12348000   # assembler gera lui + addi se necessário
```

### Exemplo 2: Branch Condicional (se a < b, vá para label)

No MIPS é necessário uma instrução de comparação separada:

```assembly
slt   $t0, $s0, $s1
bne   $t0, $zero, label
```

No RISC-V existe instrução de branch condicional direto:

```assembly
blt   x10, x11, label   # branch se x10 < x11 (signed)
```

| Operação                 | MIPS Assembly                             | RISC-V Assembly                           |
|--------------------------|-------------------------------------------|-------------------------------------------|
| Adição                   | add $s0, $s1, $s2                         | add x10, x11, x12                         |
| Carregamento de Memória  | lw $s0, 4($s1)                            | lw x10, 4(x11)                            |
| Branch Igual             | beq $s0, $s1, label                       | beq x10, x11, label                       |
| Multiplicação            | mul $s0, $s1, $s2                         | mul x10, x11, x12                         |

## Conclusão

O MIPS oferece estabilidade e um ISA compreensivo para aplicações legadas e educação, enquanto o RISC-V destaca-se pela flexibilidade, custo zero de licenciamento e potencial para inovações futuras [2][5]. Com a transição de empresas como a MIPS para RISC-V, esta arquitetura posiciona-se como o futuro das computações RISC, especialmente em campos emergentes.

## Referências

[0] Waterman, A., & Asanović, K. (Eds.). (2017). *The RISC-V Instruction Set Manual, Volume I: User-Level ISA*. RISC-V Foundation.

[1] MIPS Technologies. (2021–2025). *MIPS Transition to RISC-V Compatible Designs*. Documentação oficial.

[2] Asanović, K., et al. (2016). *The Case for Open Instruction Sets*. Commun. ACM.

[3] Patterson, D. A., & Hennessy, J. L. (2021). *Computer Organization and Design RISC-V Edition* (2nd ed.). Morgan Kaufmann.

[5] RISC-V International. (2024–2025). *RISC-V Specifications and Ecosystem Reports*. riscv.org

[7] MIPS Technologies. (2020). *MIPS32 Architecture for Programmers*. Volume I–III.

[9] Waterman, A. (2016). *Design of the RISC-V Instruction Set Architecture*. PhD Thesis, University of California, Berkeley.

[10] Patterson, D. A., & Hennessy, J. L. (2017). *Computer Organization and Design: The Hardware/Software Interface – RISC-V Edition*. Morgan Kaufmann.

[11] RISC-V International & Linux Foundation. (2025). *State of RISC-V Software Ecosystem*. Relatório anual.

[13] Vários autores. (2023–2025). Artigos e benchmarks de migração MIPS → RISC-V (diversas conferências: Hot Chips, ISCA, MICRO).