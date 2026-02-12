# Report — Teste de Avaliacao ISD 2025-26

> [!info] Analise pos-teste
> Analise baseada na descricao do aluno sobre o que fez em cada alinea, com estimativa de cotacao e comentarios sobre possíveis erros.

---

## Resumo Geral

| Alinea | Cotacao | Estimativa | Observacao                              |
| ------ | ------- | ---------- | --------------------------------------- |
| 1.1    | 2v      | ~1.5-2v    | Abordagem valida, bem justificada       |
| 1.2    | 4v      | ~1-2v      | Incompleto — faltou o circuito          |
| 1.3    | 4v      | ~3.5-4v    | Completo — diagrama de estados + circuito |
| 1.4    | 4v      | ~1-2v      | Abordagem com XNOR provavelmente errada |
| 1.5    | 4v      | ?          | Nao recordada                           |
| 1.6    | 2v      | ~0.5-1v    | Ideia do contador correta, XNOR errado  |
| **Total** | **20v** | **~8-11v** | *(sem contar 1.5)*                   |

---

## Analise por Alinea

### 1.1 — Diagrama de Estados (2v) — Estimativa: ~1.5-2v

> [!tip] O que fez
> Dois diagramas de estado separados (um para comandante, outro para subcomandante). Na justificacao, explicou que o resultado Mealy do comandante em AND com o do subcomandante determina se o sistema fica operacional.

**Avaliacao:** A abordagem de separar em dois diagramas e valida e a justificacao com o AND e correta logicamente. O professor pode preferir um unico diagrama integrado, mas a separacao com justificacao demonstra compreensao do problema. Provavelmente boa nota nesta alinea.

---

### 1.2 — Sistema (4v) — Estimativa: ~1-2v

> [!warning] O que fez
> Nao completou o circuito. Nao recorda a pergunta exata.

**Avaliacao:** Sem o circuito, a alinea fica incompleta. Dependendo do que foi feito (se houve diagrama de estados ou tabela de verdade parcial), pode ter alguns valores. A falta do circuito custa bastante.

---

### 1.3 — Sistema Digital (4v) — Estimativa: ~3.5-4v

> [!tip] O que fez
> Fez tudo: diagrama de estados e circuito completo. Problema semelhante ao Teste B 2024-25 (passagem de canal com dois sensores).

**Avaliacao:** Se o diagrama de estados esta correto e o circuito implementa-o bem, esta alinea deve valer quase toda a cotacao. O facto de ser semelhante ao Teste B e positivo — o padrao ja era conhecido.

---

### 1.4 — Validacao de Codigo de 6 bits (4v) — Estimativa: ~1-2v

> [!danger] O que fez
> Usou flip-flops em serie ligados a portas XNOR para verificar se o codigo de 6 bits tem exatamente 1 zero.

**Avaliacao — Problema identificado:**

A abordagem com XNOR tem uma falha fundamental. O XNOR verifica se dois bits sao **iguais**, nao se ha exatamente um zero. O problema com esta abordagem:

- Se todos os bits sao '1' exceto um → XNOR entre bits adjacentes daria '1' para pares iguais e '0' para o par que inclui o zero. Mas isto nao distingue **1 zero** de **2 zeros** em certas configuracoes.
- Exemplo: `110111` (1 zero) e `110011` (2 zeros) — o XNOR entre bits adjacentes nao filtra corretamente o segundo caso.

**Abordagem correta provavel:**
O metodo mais direto para "exatamente 1 zero" num codigo de 6 bits:
- Inverter cada bit ($\overline{b_i}$) e depois somar — queremos que a soma dos bits invertidos seja exatamente 1
- Isto pode ser feito com logica combinatoria: para cada posicao $i$, criar o termo $\overline{b_i} \cdot b_0 \cdot b_1 \cdots b_{i-1} \cdot b_{i+1} \cdots b_5$ (o bit $i$ e zero e todos os outros sao um)
- O resultado final e o OR de todos estes 6 termos

Ou seja, a saida $V = \overline{b_0} \cdot b_1 \cdot b_2 \cdot b_3 \cdot b_4 \cdot b_5 + b_0 \cdot \overline{b_1} \cdot b_2 \cdot b_3 \cdot b_4 \cdot b_5 + \ldots$

> [!note] Nota
> Nao era necessario flip-flops para esta alinea — e logica puramente **combinatoria**. O uso de FFs em serie sugere confusao com um circuito sequencial quando o problema e combinatorio.

---

### 1.5 — Nao recordada (4v)

Sem informacao para avaliar.

---

### 1.6 — Geracao de Codigos (2v) — Estimativa: ~0.5-1v

> [!warning] O que fez
> Disse que usaria um contador ligado a um clock para gerar o numero, ligado a XNOR (mesma logica do 1.4).

**Avaliacao:**

A ideia do **contador** esta parcialmente correta — um contador de 6 bits ligado a um clock pode gerar todas as combinacoes de 0 a 63, servindo como gerador de codigos de teste.

No entanto:
- A parte do XNOR herda o mesmo erro do 1.4
- O aluno suspeita que o professor queria um **MUX** — isto faz sentido se a pergunta pedia selecionar/apresentar valores especificos (um MUX permitiria escolher qual codigo apresentar ao sistema de validacao)
- A abordagem conceptual de "gerar + validar" esta la, mas a implementacao especifica perde pontos

**O que o professor provavelmente queria:**
- Um **contador de 6 bits** (correto) para gerar os codigos sequencialmente
- Ligado ao circuito combinatorio de validacao do 1.4 (nao XNOR)
- Possivelmente um **MUX** para selecionar entre codigos pre-definidos ou para encaminhar bits

---

## Conclusao

> [!important] Pontos-chave
> - **1.1 e 1.3** foram as alineas mais fortes — abordagens corretas e completas
> - **1.2** perdeu pontos por estar incompleta
> - **1.4 e 1.6** partilham o mesmo erro conceptual (uso de XNOR para detetar "exatamente 1 zero") — a abordagem correta seria logica combinatoria com termos AND-OR
> - O uso desnecessario de flip-flops no 1.4 sugere confusao entre circuitos combinatorios e sequenciais
> - Sem saber o 1.5, a estimativa global fica entre **~8-11 valores em 16** (excluindo o 1.5)

> [!note] Para estudar
> - Rever a diferenca entre problemas combinatorios (sem memoria) e sequenciais (com memoria/FFs)
> - Praticar circuitos de detecao de padroes em codigos binarios (contar zeros/uns)
> - Rever aplicacao de MUX para selecao de dados
