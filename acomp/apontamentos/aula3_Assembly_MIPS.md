# Arquitetura de Computadores - MIPS

## Arquitetura de von Neumann

A arquitetura de von Neumann é um modelo de arquitetura de computador que se baseia em três componentes principais:

- **CPU (Central Processing Unit):** Executa as instruções do programa.
- **Memória:** Armazena o programa e os dados.
- **Input/Output (I/O):** Permite a comunicação com o exterior.

Estes componentes são interligados por um **System BUS**, que é composto por:

- **Control bus:** Controla o fluxo de dados e instruções.
- **Address bus:** Identifica a localização dos dados e instruções na memória.
- **Data bus:** Transporta os dados e instruções.

## CPU

A CPU é o cérebro do computador. É composta por:

- **Registers:** Mantêm uma cópia dos dados do programa.
- **Control Unit:** Controla a execução do programa.
- **ALU (Arithmetic Logic Unit):** Efetua cálculos sobre os dados dos registos.
- **System Clock:** Sincroniza as operações da CPU.

## ISA – Instruction Set Architecture

A ISA é a interface entre o hardware e o software. Define:

- **Instruções:** O conjunto de operações que a CPU pode executar.
- **Regras de endereçamento:** Como aceder à memória.
- **Tipos de dados:** Os tipos de dados que a CPU pode manipular.
- **Registos:** O número e tipo de registos da CPU.
- **Arquitetura da memória:** Como a memória está organizada.
- **Interrupt & exception handling:** Como lidar com eventos inesperados.
- **External I/O:** Como comunicar com os periféricos.

## MIPS

MIPS (Microprocessor without Interlocked Pipeline Stages) é uma arquitetura de processador RISC (Reduced Instruction Set Computer).

- **Processador de 32 bits:**
    - 32 registos de 32 bits.
    - Versões mais recentes de 64 bits.
- **Arquitetura RISC:**
    - Reduced instruction set computer.
- **Cache:**
    - 32 kb de dados e 63 kb de instruções.

### MIPS – Registos

| Nome      | Número    | Utilização                                       |
|-----------|-----------|--------------------------------------------------|
| `$zero`   | `$0`      | Constante 0                                      |
| `$at`     | `$1`      | Reservado ao assembler                           |
| `$v0-$v1` | `$2-$3`   | Resultado de uma função/procedimento             |
| `$a0-$a3` | `$4-$7`   | Argumentos 1, 2, 3 e 4                           |
| `$t0-$t7` | `$8-$15`  | Temporários (não preservados entre chamadas)     |
| `$s0-$s7` | `$16-$23` | Persistentes (preservados entre chamadas)        |
| `$t8-$t9` | `$24-$25` | Temporários (não preservados entre chamadas)     |
| `$k0-$k1` | `$26-$27` | Reservados ao kernel do S.O.                      |
| `$gp`     | `$28`     | Ponteiro para a área global (dados estáticos)      |
| `$sp`     | `$29`     | Ponteiro da stack                                |
| `$fp`     | `$30`     | Ponteiro da frame                                |
| `$ra`     | `$31`     | Endereço de retorno (usado pela chamada de uma função) |

### MIPS – Tipos de dados

- **.word:** 4 bytes (32 bits)
- **.half:** 2 bytes (16 bits)
- **.byte:** 1 byte (8 bits)
- **.char:** 1 byte (8 bits)

Existem também tipos para números de ponto flutuante, como `.float` e `.double`. Para mais detalhes, veja o documento sobre [[aula4_Assembly_Ponto_Flutuante|Ponto Flutuante em Assembly]].

### MIPS – Endereçamento

- **Endereços de 32 bits (4 bytes)**
- **Little endian:** O bit menos significativo está no endereço do byte menor.
- **Endereçamento ao byte:**
    - Tamanho máximo de um programa: (2³² – 1) bytes

### MIPS – Regras de endereçamento

- **word:** tem que ocupar uma linha de memória (endereço múltiplo de 4).
- **half-word:** ocupa os 2 primeiros/últimos bytes (endereço par).
- **byte:** ocupa o 1º byte livre.

### MIPS – Memória

A memória em MIPS é dividida em vários segmentos:

- **Reserved:** (0x00000000 - 0x00040000) - Reservado para o sistema operativo.
- **.text:** (0x00040000 - 0x10000000) - Instruções do programa.
- **.data:** (0x10000000 - 0x7FFFFFFF) - Dados estáticos do programa.
- **Heap:** (cresce para cima a partir do final do .data) - Dados dinâmicos.
- **Stack:** (cresce para baixo a partir do topo da memória) - Dados locais, parâmetros de funções e endereços de retorno.

## Program structure

```mips
# this is a comment
.data # Definição do segmento de dados (dados estáticos do programa)
A: .word 10
B: .byte 20
C: .half 30

.text # Definição do segmento de texto (instruções do programa)
main:
  lw $s0, A
  lh $s1, B
  add $s2, $s0, $s1
```

## Instruções

### Load / Store

- `lw registo_destino, endereço_memória`
- `lh registo_destino, endereço_memória`
- `lb registo_destino, endereço_memória`
- `sw registo_origem, endereço_memória`
- `sh registo_origem, endereço_memória`
- `sb registo_origem, endereço_memória`

### Aritmética

- `add $s0, $s1, $s2 ## $s0 = $s1 + $s2`
- `sub $s0, $s1, $s2 ## $s0 = $s1 - $s2`

Para mais detalhes sobre multiplicação e divisão, veja o documento sobre [[Aula5_Assembly_MUL_DIV|Multiplicação e Divisão em Assembly]].

### Controlo (branches e jumps)

- `bgt $s0, $s1, target ## branch to target if $s0 > $s1`
- `blt $s0, $s1, target ## branch to target if $s0 < $s1`
- `beq $s0, $s1, target ## branch to target if $s0 = $s1`
- `bne $s0, $s1, target ## branch to target if $s0 != $s1`

Para mais detalhes e exemplos sobre comandos condicionais, veja o documento sobre [[Aula4_Assembly_Condicionais|Condicionais em Assembly]].

## Codificação de instruções

O trabalho de codificação de instruções é produzido pelo **assembler**.

- **Pré-processamento:** Inclui substituição de macros, remoção de comentários, etc.
- **Processamento (ou compilação):** Tradução do código fonte em código assembly.
- **Assembler:** Tradução do código assembly em código máquina.
- **Linker:** Rearranjo do código de forma a incluir código não fornecido (ex: funções externas).

### MIPS – Codificação de instruções

- Todas as instruções têm o mesmo tamanho: 1 word (4 bytes – 32 bits).
- A ISA define 3 formatos de instruções:
    - **R-Type (register)**
    - **I-Type (immediate)**
    - **J-Type (jump)**
- Todos os formatos são consistentes, o `opcode` ocupa sempre os mesmos bits.

#### R-type instructions (register instructions)

| opcode (6) | rs (5) | rt (5) | rd (5) | shamt (5) | func (6) |
|---|---|---|---|---|---|

- **opcode:** código da operação
- **rd:** destination register
- **rs:** source register
- **rt:** source/destination register (transient)
- **shamt:** used for shift operations
- **func:** used for special functions
- **Formato:** `XXX rd, rt, rs`

#### I-type instructions (immediate instructions)

| opcode (6) | rs (5) | rt (5) | immed (16) |
|---|---|---|---|

- **rs:** source register
- **rt:** source/destination register (transient)
- **immed:** 16 bit immediate value
- **Formato:** `XXXI rt, rs, immed`

#### J-type instructions (Jump intructions)

| opcode (6) | addr (26) |
|---|---|

- **addr:** address
- **Formato:** `j addr`

## MIPS – Funções

- As funções permitem criar abstrações e reutilizar código.
- As funções têm o seu próprio espaço de memória (stack).
- O `caller` deve passar os argumentos utilizando os registos `$a0` ... `$a3`.
- O `caller` chama a função usando a instrução `jal`.
- O `callee` calcula o resultado e guarda-o nos registos `$v0` e `$v1`.
- O `callee` retorna a execução para o `caller` usando a instrução `jr`.

### MIPS – Funções (stack)

- A stack é um segmento de memória usado como pilha de dados (LIFO).
- Permite guardar valores dos registos, para que possam ser reutilizados, sem comprometer a execução do programa.
- A ISA do MIPS não oferece operações de `push` e `pop`, mas permite manipular o registo stack pointer (`$sp`).
- O endereço do topo da pilha (`$sp`) diminui ao fazer `push` e aumenta quando se faz `pop`.

## MIPS - Syscalls

- As chamadas ao sistema permitem interagir com o sistema operativo.
- São definidas pelo código da operação no registo `$v0`.

| Service | Code in `$v0` | Arguments | Result |
|---|---|---|---|
| print integer | 1 | `$a0` = integer to print | |
| print float | 2 | `$f12` = float to print | |
| print double | 3 | `$f12` = double to print | |
| print string | 4 | `$a0` = address of null-terminated string to print | |
| read integer | 5 | | `$v0` contains integer read |
| read float | 6 | | `$f0` contains float read |
| read double | 7 | | `$f0` contains double read |
| read string | 8 | `$a0` = address of input buffer, `$a1` = maximum number of characters to read | |
| exit | 10 | | |
