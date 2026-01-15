# Linguagem Assembly - Multiplicação e Divisão

Este documento foca-se nas operações de multiplicação e divisão em MIPS. Para uma introdução geral à arquitetura e instruções MIPS, consulte o documento sobre [[aula3_Assembly_MIPS|Assembly MIPS]].

## Multiplicação de Inteiros

A multiplicação de dois inteiros em MIPS é uma operação direta que resulta em outro inteiro.

```mips
# s0 = t0 * t1
mul $s0, $t0, $t1 
```

## Multiplicação por Potências de Dois

Multiplicar números por potências de 2 é trivial para o computador. Basta realizar a operação de **shift left**, que significa mover os bits para a esquerda.

- Se movermos os bits de um número binário **uma** casa para a esquerda, multiplicaremos por **2**.
- Se movermos os bits de um número binário **duas** casas para a esquerda, multiplicaremos por **4**.
- Se movermos os bits de um número binário **n** casas para a esquerda, multiplicaremos por **2ⁿ**.

**Exemplo:**
- `000110`₂ = 6₁₀
- `001100`₂ = 12₁₀ (6 SHIFT LEFT 1)
- `011000`₂ = 24₁₀ (12 SHIFT LEFT 1)
- `110000`₂ = 48₁₀ (24 SHIFT LEFT 1)
- Conclusão: 6 SHIFT LEFT 3 dá 48 (6 * 2³ = 48)

### Shift Left Lógico (sll)

A instrução `sll` (Shift Left Logical) realiza esta operação.

```mips
# faz shift left de $t1 n casas para a esquerda e guarda em $t0
sll $t0, $t1, n 
```

## Divisão de Inteiros

A divisão de inteiros em MIPS utiliza registradores especiais, `hi` e `lo`, para armazenar o resultado.

- **`div $t0, $t1`**: Realiza a divisão inteira `$t0 / $t1`.
    - A **parte inteira** do resultado é armazenada no registrador `lo`.
    - O **resto** da divisão é armazenado no registrador `hi`.

Para aceder a estes resultados, utilizamos as seguintes instruções:

- **`mflo $s0`**: Move o conteúdo do registrador `lo` para `$s0`.
- **`mfhi $s1`**: Move o conteúdo do registrador `hi` para `$s1`.

**Exemplo:**

```mips
# Realiza a divisão 10 / 3
li $t0, 10
li $t1, 3
div $t0, $t1

# Move o quociente para $s0 e o resto para $s1
mflo $s0  # $s0 = 3
mfhi $s1  # $s1 = 1
```
