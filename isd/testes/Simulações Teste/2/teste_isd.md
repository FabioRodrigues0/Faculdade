# Simulacao de Teste — Introducao a Sistemas Digitais (ISD)

> [!info] Informacao
> **Disciplina:** Introducao a Sistemas Digitais (ISD)
> **Data:** 2026-02-11
> **Conteudo:** Portas logicas, algebra booleana, mapas de Karnaugh, MUX/DEMUX, circuitos integrados TTL (74LS), flip-flops (D e JK), maquinas de estado (Moore e Mealy), contadores, displays de 7 segmentos
> **Tipo:** Simulacao de Teste
> **Cotacao:** Questao 1.1: 2 valores; Questao 1.6: 2 valores; restantes questoes com cotacao de 4 valores/alinea.
> **Observacoes:** A aprovacao a unidade curricular implica aproveitamento nos varios instrumentos de avaliacao que a constituem e nao apenas nesta prova. Deve justificar todas as decisoes tomadas.

---

A empresa **DroneRace** pretende implementar uma solucao digital para gerir corridas de drones num circuito regional. O sistema deve controlar o acesso dos pilotos, monitorizar a corrida e apresentar resultados. Tendo o projeto quase integralmente delineado, restam ainda algumas questoes pendentes por resolver — que sao detalhadas nas alineas que se seguem:

---

**1.1** (2 valores) Apresente um diagrama de blocos que represente as entradas e saidas do sistema. Apresente, ainda, a sua proposta de solucao tecnica para a resolucao do problema proposto, tendo em consideracao o enunciado e as alineas que se seguem. Justifique as decisoes tomadas.

> [!note]- Espaco para resposta

---

**1.2** (4 valores) **Validacao de acesso do piloto:** cada piloto possui um cartao de identificacao digital de 4 bits. Apenas os pilotos com codigos autorizados ($0010$, $0110$, $1010$, $1011$, $1110$) podem participar na corrida. Caso o codigo nao seja autorizado, deve ser gerado um sinal de alarme. Adicionalmente, sempre que o codigo do piloto for impar, deve ser ativado um sinal especial indicando que o piloto pertence a categoria "Elite". Justifique com o projeto e implementacao do circuito digital — tabela de verdade, simplificacao por mapa de Karnaugh e circuito com portas logicas.

> [!note]- Espaco para resposta

---

**1.3** (4 valores) **Selecao do percurso de corrida:** o circuito dispoe de 8 percursos diferentes, cada um identificado por um sinal digital. Consoante as condicoes meteorologicas (codificadas em 3 bits pelo sistema de sensores), deve ser selecionado automaticamente o percurso adequado. Projete e implemente a solucao digital que permite esta selecao, recorrendo a um MUX 8:1 (74LS151). Justifique todas as consideracoes que serviram de suporte a solucao proposta.

> [!note]- Espaco para resposta

---

**1.4** (4 valores) **Verificacao do codigo de arranque:** antes de iniciar a corrida, cada piloto autorizado na alinea 1.2 deve introduzir um codigo de arranque de 3 bits. Este codigo e recebido bit a bit (em serie) e deve ser comparado com o codigo pre-definido atribuido ao piloto. Se o codigo introduzido corresponder ao esperado, o drone e ativado. Projete uma solucao digital que permita o armazenamento e a verificacao do codigo, recorrendo a flip-flops do tipo D. Justifique todas as consideracoes que serviram de suporte a solução proposta.

> [!note]- Espaco para resposta

---

**1.5** (4 valores) **Detecao de ultrapassagem ilegal:** durante a corrida, o sistema recebe um fluxo serie de bits proveniente de sensores de posicao. Sempre que for detetada a sequencia "$110$" no fluxo de dados, deve ser gerado um sinal de penalizacao. Apresente o projeto completo da maquina de estados (suportada por flip-flops do tipo D), na forma mais adequada para o pretendido — diagrama de estados, tabela de transicao, atribuicao de estados, mapas de Karnaugh e expressoes booleanas simplificadas. Justifique a resolucao com todas as etapas de projeto e implementacao.

> [!note]- Espaco para resposta

---

**1.6** (2 valores) **Visualizacao do nome do piloto vencedor:** apresente em detalhe, sem ter de concluir o projeto, de que forma poderia ser implementado um circuito digital que permita a visualizacao do nome do piloto vencedor da corrida num display de 7 segmentos. Justifique devidamente o principio proposto.

> [!note]- Espaco para resposta
