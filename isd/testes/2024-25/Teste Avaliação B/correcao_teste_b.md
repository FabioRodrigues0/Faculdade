# Correcao Teste B — Controlo de Trafego no Canal do Panama

> [!info] Fonte
> Baseado nos comentarios do professor (`Comentarios Teste Avaliacao ISD 2025_25 B.docx`) e na resolucao feita em aula (`DocScanner 11-02-2026 15-14.pdf`, paginas 5-9).

---

## Tema

Sistema digital para controlar trafego de barcos no Canal do Panama. Questoes de acesso, contagem e temporizacoes para evitar acidentes.

## Como o professor resolveu

### 1.1 — Diagrama de blocos (2 valores)

- Entradas: Barco 1, Barco 2 (designacao 2 bits + prioridade 2 bits)
- Bloco: Acesso ao Canal
- Saidas: Temporizacao, Contagem
- "A solucao tem uma componente em logica combinatoria para acao imediata de acesso. A parte de contagens/temporizacoes implicara uma maquina de Moore/Mealy"

### 1.2 — Acesso ao canal / Prioridade (4 valores)

**Tabela de verdade + Karnaugh:**
- 4 colunas: 2 bits prioridade barco A (B3, B2) + 2 bits prioridade barco B (B1, B0)
- Saidas: Passa Barco 1, Passa Barco 0
- Comparacao par-a-par das prioridades
- Prioridade igual → preferencia ao Barco 0
- Implementacao com MUX ou Karnaugh
- Circuito com entradas A3, A2, A1, A0 e B3, B2, B1, B0

### 1.3 — Validacao de PIN (4 valores)

**Maquina de Mealy** (usa barco autorizado em 1.2):
- PIN enviado via UWB, recebido em serie
- Assume PIN = "10" (2 bits)
- 2 estados → 1 flip-flop ($2^1 = 2$)
- Estado A →[0/0 self-loop]→ A; →[1/0]→ B
- Estado B →[0/1]→ A (PIN correto); →[1♢/0]→ A
- $D = PIN \cdot \bar{Q}$
- $\text{Saida Mealy} = Q \cdot \overline{PIN}$
- Mapas de Karnaugh para D e saida

### 1.4 — Detecao entrada/saida do canal (4 valores)

**Flip-flop D com PRESET e RESET** (apos PIN validado em 1.3):
- Sensores de entrada e saida no canal
- Flip-flop D armazena detecao de entrada ('1' no PRESET)
- Quando saida do canal e detetada → sinal Verde
- $\text{Verde} = A\_STORE \cdot SAIDA$
- Tabela: A_STORE=1 AND SAIDA=1 → Verde=1

### 1.5 — Alarme materiais perigosos (4 valores)

**VHDL** (usa bits de designacao de 1.2):
- Bits de designacao do barco (2 bits da alinea 1.2)
- Bit menos significativo = 0 → numero par → alarme
- $\text{ALARME} = \bar{B_0}$ (simples inversor)
- Tabela: B1=0,B0=0→Alarme=1; B1=0,B0=1→0; B1=1,B0=0→1; B1=1,B0=1→0

### 1.6 — Visualizacao do nome do barco (2 valores)

- Usa designacao de 1.2 (2 bits)
- Barco 1→"1", Barco 2→"2", Barco 3→"3", Barco 4→"-"
- Descodificador designacao→segmentos para display 7 segmentos
