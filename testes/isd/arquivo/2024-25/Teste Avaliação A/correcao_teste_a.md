---
tags:
  - ISD
---

# Correcao Teste A — Referendo do Nome do Canal do Panama

> [!info] Fonte
> Baseado nos comentarios do professor (`Comentarios Teste Avaliacao ISD 2025_25 A.docx`) e na resolucao feita em aula (`DocScanner 11-02-2026 15-14.pdf`, paginas 1-4).

---

## Tema

Sistema digital para referendar o nome do Canal do Panama (5 nomes possiveis). Garantir acesso credenciado e geracao aleatoria do nome.

## Como o professor resolveu

### 1.1 — Diagrama de blocos (2 valores)

- Entradas: lista de nomes, botao (A)
- Bloco: Gerador Aleatorio do Nome
- Saida: Random Nome
- Identificar componente combinatoria (acesso) vs sequencial (geracao aleatoria)

### 1.2 — Geracao aleatoria do nome (4 valores)

**Maquina de Moore com 3 estados** (ou 5 conforme versao):
- Nome A (00), Nome B (01), Nome C (10)
- 3 estados → 2 flip-flops ($2^1 = 2$ nao chega, $2^2 = 4 \geq 3$)
- Entrada A: botao com pull-down resistor
- A=0 → mantem estado; A=1 → avanca para proximo
- Tabela de transicao completa com PS, NS, D1, D0
- Mapas de Karnaugh para D1 e D0

### 1.3 — Impedir ultimo nome de sair (4 valores)

**Modifica a maquina de 1.2:**
- Duas solucoes possiveis (Sol A e Sol B)
- Alterar tabela de verdade para que no 3o estado, o proximo estado seja o 1o independentemente de A=1 ou A=0
- Essencialmente: retirar o ultimo estado da maquina de Moore

### 1.4 — Acesso a votacao / PIN (4 valores)

**VHDL** — apenas podem votar utilizadores com PIN de 4 digitos com MSB ativo (D=1):
- Tabela de verdade (DBCA): saida = 1 quando D=1
- Implementacao em VHDL comentada

### 1.5 — Alarme de fraude (4 valores)

**Maquina de Mealy** que deteta "1-1-1" (1o nome escolhido 3 vezes consecutivas):
- O "1" e gerado cada vez que sai o 1o estado na maquina de Moore de 1.2
- **Moore:** 4 estados (CNT_0 a CNT_3), conta ocorrencias consecutivas
  - CNT_0 (00) →[z=1]→ CNT_1 (01) →[z=1]→ CNT_2 (10) →[z=1]→ CNT_3 (11)
  - z=0 em qualquer estado → volta a CNT_0
- **Mealy:** 3 estados (E_0 a E_2)
  - E_0 (00) →[1/0]→ E_1 (01) →[1/0]→ E_2 (10) →[1/1]→ volta
  - 0/0 em qualquer estado → volta a E_0

### 1.6 — Visualizacao em display (2 valores)

- Mapeamento direto dos estados de 1.2: 00→A, 01→B, 10→C
- Construir descodificador estado→nome
- Para cada letra do nome: descodificador letra→segmentos (display 7 segmentos)
- Numero de displays = limite maximo de letras por nome (escolha do aluno)
