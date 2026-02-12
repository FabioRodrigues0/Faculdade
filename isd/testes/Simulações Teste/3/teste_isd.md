# Simulacao de Teste — Introducao a Sistemas Digitais (ISD)

> [!info] Informacao
> **Disciplina:** Introducao a Sistemas Digitais (ISD)
> **Data:** 2026-02-12
> **Conteudo:** Portas logicas, algebra booleana, mapas de Karnaugh, MUX/DEMUX, circuitos integrados TTL (74LS), flip-flops (D e JK), maquinas de estado (Moore e Mealy), contadores, displays de 7 segmentos, VHDL
> **Tipo:** Simulacao de Teste
> **Cotacao:** Questao 1.1: 2 valores; Questao 1.6: 2 valores; restantes questoes com cotacao de 4 valores/alinea.
> **Observacoes:** A aprovacao a unidade curricular implica aproveitamento nos varios instrumentos de avaliacao que a constituem e nao apenas nesta prova. Deve justificar todas as decisoes tomadas.

---

A empresa **EstufaVerde** pretende implementar uma solucao digital para gerir o sistema de rega automatizada de uma estufa agricola. O sistema deve controlar o acesso dos operadores, gerir a rotacao da rega entre diferentes zonas da estufa e monitorizar as condicoes do solo. Tendo o projeto quase integralmente delineado, restam ainda algumas questoes pendentes por resolver — que sao detalhadas nas alineas que se seguem:

---

**1.1** (2 valores) Apresente um diagrama de blocos que represente as entradas e saidas do sistema. Apresente, ainda, a sua proposta de solucao tecnica para a resolucao do problema proposto, tendo em consideracao o enunciado e as alineas que se seguem. Identifique quais os blocos que correspondem a logica combinatoria e quais correspondem a logica sequencial. Justifique as decisoes tomadas.

> [!note]- Espaco para resposta

---

**1.2** (4 valores) **Controlo da zona de rega:** a estufa esta dividida em 3 zonas de irrigacao — Zona 1, Zona 2 e Zona 3. O sistema deve permitir ao operador alternar entre as zonas atraves de um botao $B$ (com resistencia pull-down). Quando $B=0$, o sistema permanece na zona atual; quando $B=1$, avanca para a zona seguinte de forma ciclica (Zona 1 $\rightarrow$ Zona 2 $\rightarrow$ Zona 3 $\rightarrow$ Zona 1). A valvula de agua so deve estar ativa na zona atualmente selecionada. Projete a maquina de estados de Moore que implementa este controlador — diagrama de estados, tabela de transicao (estado atual, entrada, proximo estado, saidas), atribuicao de estados em binario, mapas de Karnaugh para as entradas dos flip-flops D e expressoes booleanas simplificadas. Justifique todas as etapas do projeto.

> [!note]- Espaco para resposta

---

**1.3** (4 valores) **Restricao por escassez de agua:** devido a uma situacao de seca, a direcao da EstufaVerde decide que a Zona 3 deve ser temporariamente retirada da rotacao de rega. O sistema deve agora alternar apenas entre Zona 1 e Zona 2 ($B=1$ avanca, $B=0$ mantem), ignorando completamente a Zona 3. Modifique a maquina de estados da alinea 1.2 para refletir esta restricao — apresente a nova tabela de transicao, os novos mapas de Karnaugh e as expressoes booleanas atualizadas. Justifique todas as alteracoes efetuadas.

> [!note]- Espaco para resposta

---

**1.4** (4 valores) **Autenticacao do operador:** antes de poder ativar o sistema de rega, o operador autorizado deve introduzir um codigo de seguranca de 3 bits. Este codigo e recebido bit a bit (em serie) e deve ser armazenado para posterior verificacao. Apos a rececao dos 3 bits, o codigo armazenado e comparado com o PIN pre-definido atribuido ao operador. Se o codigo corresponder, o sistema de rega e desbloqueado. Projete uma solucao digital que permita o armazenamento e a verificacao do codigo, recorrendo a flip-flops do tipo D. Justifique todas as consideracoes que serviram de suporte a solucao proposta.

> [!note]- Espaco para resposta

---

**1.5** (4 valores) **Detecao de rega instavel:** durante o funcionamento do sistema, o sensor de humidade do solo na zona ativa (da alinea 1.2) gera um fluxo serie de bits ($1$ = solo humido, $0$ = solo seco). Sempre que for detetada a sequencia "$101$" no fluxo de dados (indicando oscilacao instavel da humidade), deve ser gerado um sinal de alarme de manutencao. Apresente o projeto completo da maquina de estados (suportada por flip-flops do tipo D), na forma mais adequada para o pretendido — diagrama de estados, tabela de transicao, atribuicao de estados, mapas de Karnaugh e expressoes booleanas simplificadas. Justifique a resolucao com todas as etapas de projeto e implementacao.

> [!note]- Espaco para resposta

---

**1.6** (2 valores) **Visualizacao da zona ativa:** apresente em detalhe, sem ter de concluir o projeto, de que forma poderia ser implementado um circuito digital que permita a visualizacao do numero da zona de rega atualmente ativa ("1", "2" ou "3") num display de 7 segmentos, recorrendo aos estados da maquina de Moore da alinea 1.2. Justifique devidamente o principio proposto.

> [!note]- Espaco para resposta
