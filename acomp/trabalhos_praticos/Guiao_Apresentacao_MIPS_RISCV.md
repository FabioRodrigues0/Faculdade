# Guião Completo de Apresentação: Linguagem Assembly (Perspectiva Evolutiva)

## Timing Global: 15-20 minutos

---

## SLIDE 1: Linguagem Assembly (Perspectiva Evolutiva)

**Tempo: 30 segundos**

### O que dizer:

"Boa tarde. Hoje vamos falar sobre Assembly numa perspectiva evolutiva - desde as suas origens até às aplicações mais recentes e futuras. Vamos ver como esta linguagem, criada há mais de 75 anos, continua absolutamente relevante e indispensável na computação moderna."

**Pontos-chave:**

- Apresentação do tema
- Perspectiva histórica + contemporânea
- Tom: Profissional mas entusiástico

---

## SLIDE 2: Introdução - Génese do Assembly

**Tempo: 1 minuto**

### O que dizer:

"A história do Assembly começa em 1947 com Kathleen Booth, que criou o primeiro conceito. Dois anos depois, David Wheeler desenvolveu o primeiro compilador prático.

Na década de 60, introduziram-se as Macros para lidar com programas mais complexos. Mas o grande marco foi 1978, com o lançamento do Intel 8086 - o Assembly x86 tornou-se o padrão para PCs pessoais.

A evolução continuou: 1985 trouxe os 32-bits com o Intel 80386, e 2003 os 64-bits com o AMD x86-64 - arquitectura que ainda usamos hoje."

**Pontos-chave:**

- Cronologia clara: 1947 → 1949 → 1960s → 1978 → 1985 → 2003
- Ênfase no 8086 como turning point
- x86-64 ainda é actual

---

## SLIDE 3: Kathleen Booth (1922-2022) - A Pioneira

**Tempo: 1 minuto**

### O que dizer:

"Kathleen Booth foi uma matemática e cientista da computação britânica extraordinária. Em 1947, criou a primeira linguagem Assembly - literalmente inventou o conceito de usar mnemónicas em vez de zeros e uns.

Mas não ficou por aí: foi autora do primeiro livro sobre programação e concebeu computadores pioneiros no Reino Unido, como o ARC e o SEC, trabalhando com Andrew Booth.

Curiosamente, havia uma divisão de trabalho clara: Kathleen focava-se na programação - o software - enquanto Andrew cuidava do hardware. Uma verdadeira pioneira que viveu até 2022, assistindo à evolução completa da computação."

**Pontos-chave:**

- Primeira linguagem Assembly (1947)
- Primeiro livro de programação
- Viveu 100 anos, viu tudo
- Software vs Hardware (equipa com Andrew)

---

## SLIDE 4: Outras Personalidades Notáveis

**Tempo: 1 minuto**

### O que dizer:

"Outros dois nomes fundamentais:

David Wheeler, em 1949, criou as 'Instruções Iniciais' para o computador EDSAC - considerado o primeiro sistema compilado funcional. Foi o salto da teoria para a prática.

Nathaniel Rochester desenvolveu o compilador simbólico para o IBM 701 em 1954. O 701 era chamado de 'Calculadora de Defesa' e foi o primeiro mainframe da IBM fabricado em larga escala - crucial para a difusão do Assembly na indústria."

**Pontos-chave:**

- Wheeler: teoria → prática (EDSAC, 1949)
- Rochester: industrialização (IBM 701, 1954)
- IBM 701 = primeiro mainframe em massa

---

## SLIDE 5: Relevância do Assembly na Actualidade

**Tempo: 1.5 minutos**

### O que dizer:

"Antes do Assembly, programar era um pesadelo: código de máquina puro, zeros e uns, binário exaustivo.

O Assembly trouxe quatro vantagens revolucionárias:

**Legibilidade**: Em vez de '10110000 01100001', escrevemos simplesmente 'MOV AL, 61h' ou 'ADD EAX, EBX'. Mnemónicas legíveis.

**Redução de Erros**: Imaginem digitar milhares de bits à mão - erros eram inevitáveis. Assembly eliminou isso.

**Abstração**: Podemos usar rótulos como 'minha_funcao' em vez de memorizar que a função está no endereço 0x004012A0.

**E o mais importante - Eficiência**: A tradução é 'um para um' - cada instrução Assembly corresponde a uma instrução máquina. Mantemos controlo total do hardware mas com legibilidade humana."

**Pontos-chave:**

- Antes: binário impossível
- 4 vantagens claras
- Ênfase no "um para um" (diferente de high-level)
- Ponte perfeita: humano ↔ máquina

---

## SLIDE 6: NASM vs. MIPS - Filosofias de Design

**Tempo: 1.5 minutos**

### O que dizer:

"Agora vamos comparar duas filosofias radicalmente diferentes de Assembly.

**NASM, baseado em x86 CISC**, é focado no programador. Tem instruções complexas que fazem muito trabalho - por exemplo, a instrução LOOP decrementa um contador, compara com zero e salta, tudo numa única instrução. O código fonte fica curto, mas o hardware por trás é extremamente complexo.

**MIPS, arquitectura RISC**, é focado no hardware. As instruções são simples, uniformes e rápidas. Para fazer o mesmo LOOP, precisamos de várias instruções separadas. O código fonte fica mais longo, mas a execução é muito mais veloz porque o hardware é simples.

É a dicotomia clássica: CISC sacrifica complexidade do hardware para facilitar ao programador. RISC faz o oposto - complexidade no software, simplicidade no hardware."

**Pontos-chave:**

- CISC (NASM): programador feliz, hardware complexo
- RISC (MIPS): hardware simples, código mais longo
- Trade-off fundamental
- Exemplo concreto: LOOP

---

## SLIDE 7: Anatomia das Instruções e Sintaxe

**Tempo: 1 minuto**

### O que dizer:

"Diferenças práticas na sintaxe:

**Operadores**: NASM usa 2 operadores - 'add eax, ebx' - e o resultado sobrescreve o primeiro registo, o EAX. Em MIPS são 3 operadores - 'add $t0, $s1, $s2' - o resultado vai para um novo destino, preservando os valores originais. Mais explícito, mais seguro.

**Tamanho do Comando**: Em NASM, as instruções têm tamanho variável, de 1 a 15 bytes. Em MIPS, são sempre 32 bits fixos - isto facilita imenso o processamento no pipeline do CPU."

**Pontos-chave:**

- 2 vs 3 operadores (destrutivo vs preservação)
- Tamanho variável vs fixo
- MIPS mais previsível para hardware

---

## SLIDE 8: Gestão de Memória (O Grande Divisor)

**Tempo: 1 minuto**

### O que dizer:

"A maior diferença filosófica está na memória.

**NASM permite acesso directo**: posso fazer 'add [meu_valor], eax' - somo directamente na RAM. Uma instrução, tudo feito.

**MIPS proíbe isto completamente**. Arquitectura Load/Store. Três passos obrigatórios:

1. **Load**: 'lw $t0, meu_valor' - carrego o valor da memória para um registo
2. **Soma**: 'add $t1, $t0, $t2' - faço o cálculo nos registos
3. **Store**: 'sw $t1, meu_valor' - devolvo o resultado à memória

Parece mais complicado, mas é mais rápido porque o CPU trabalha só com registos na maior parte do tempo."

**Pontos-chave:**

- NASM: flexível, acesso directo
- MIPS: rígido, Load/Store obrigatório
- Trade-off: flexibilidade vs velocidade
- 1 instrução vs 3 passos

---

## SLIDE 9: Sistemas Embedded, Críticos & IoT

**Tempo: 1.5 minutos**

### O que dizer:

"Onde o Assembly é absolutamente crítico hoje? Sistemas embedded e de tempo real.

**Aviação**: Os sistemas de controlo de voo seguem a norma DO-178C, que exige código certificável. Assembly permite verificação formal e resposta determinística - literalmente questão de vida ou morte.

**Energia Nuclear**: Controlo e segurança de reactores. Cada ciclo de CPU conta.

**Dispositivos Médicos**: Pacemakers seguem a IEC 62304. Precisam funcionar sem falhas durante anos, com bateria limitada. Assembly dá essa previsibilidade.

**Automóvel**: Sistemas de travagem, ABS, controlo de estabilidade.

O assembler usado? Tipicamente ARM ASM, porque a maioria destes dispositivos usa processadores ARM. Características comuns: recursos muito limitados, processadores de baixa frequência, e cada ciclo é crítico. Assembly dá eficiência máxima, resposta previsível e controlo preciso."

**Pontos-chave:**

- 4 sectores críticos (aviação, nuclear, médico, auto)
- Normas específicas (DO-178C, IEC 62304)
- ARM AS como assembler dominante
- Cada ciclo conta literalmente

---

## SLIDE 10: Drivers, Firmware & Bootloaders

**Tempo: 1 minuto**

### O que dizer:

"Três componentes de sistema onde Assembly é indispensável:

**Drivers**: A interface entre hardware e sistema operativo. Precisam de acesso directo a instruções específicas do CPU e gestão de interrupções ao nível do hardware. GAS para Linux/Unix, MASM para Windows.

**Firmware**: Software embedded dentro do próprio hardware - BIOS, UEFI, controladores de disco. Roda antes de haver sistema operativo.

**Bootloaders**: Código que inicializa o computador antes do SO carregar. GRUB, por exemplo, tem partes críticas em Assembly. NASM é muito usado aqui, assim como para desenvolvimento de kernels."

**Pontos-chave:**

- 3 componentes: drivers, firmware, bootloaders
- Requisitos: acesso directo + interrupções
- Assemblers específicos por contexto
- "Antes do SO" = território do Assembly

---

## SLIDE 11: Criptografia & Segurança

**Tempo: 1 minuto**

### O que dizer:

"Em criptografia, Assembly resolve um problema crítico: **timing attacks**.

Ataques de timing e cache-timing exploram variações no tempo de execução. Se um código leva mais tempo a processar passwords errados que começam com 'a' vs 'z', um atacante pode deduzir informação.

A solução é **código constant-time** - executar sempre no mesmo tempo, independentemente dos dados. Isto só é garantível em Assembly, com controlo total das instruções.

Bibliotecas como OpenSSL e libsodium implementam as rotinas críticas em Assembly. Os assemblers usados são NASM, GAS e MASM, dependendo da plataforma."

**Pontos-chave:**

- Problema: timing attacks
- Solução: constant-time code
- OpenSSL e libsodium usam Assembly
- Segurança real exige controlo total

---

## SLIDE 12: Comparação de Assemblers

**Tempo: 30 segundos**

### O que dizer:

"Esta tabela resume os principais assemblers que discutimos: GAS, NASM, MASM, ARM AS e MIPS Assembler. Cada um com as suas plataformas, sintaxe e casos de uso específicos. Podem consultar a tabela com calma."

**Pontos-chave:**

- Referência visual
- Não ler linha a linha
- Resumo prático

---

## SLIDE 13: MIPS - Arquitectura Determinística

**Tempo: 1-1.5 minutos**

### O que dizer:

"O MIPS, desenvolvido nos anos 80, tornou-se um pilar no ensino de arquitectura de computadores. A sua característica principal é o modelo de sequential consistency - muito previsível e determinístico. O que escreves é exactamente o que executa, pela ordem que escreves.

Mas tem limitações: é proprietário e tem um ISA monolítico - não podes adicionar ou remover funcionalidades. Exemplo prático: nas versões antigas, um branch condicional precisava de duas instruções - primeiro 'slt' para comparar os valores, depois 'bne' para saltar com base no resultado. Versões modernas já combinaram isto, mas mostra a rigidez do design original."

**Pontos-chave:**

- MIPS = educação mas rígido
- Sequential consistency = previsível
- Proprietário, não modular
- Exemplo: 2 instruções para branch condicional

---

## SLIDE 14: RISC-V - Open-Source Modular

**Tempo: 1.5-2 minutos**

### O que dizer:

"Em 2010, a Universidade da Califórnia em Berkeley criou o RISC-V - completamente open-source, sem custos de licenciamento. Qualquer um pode implementar, modificar, vender produtos baseados em RISC-V.

A grande inovação é a **modularidade**. Começas com RV32I - apenas operações básicas com inteiros de 32 bits. Depois adicionas extensões conforme necessário:

- **M** adiciona multiplicação e divisão: 'mul', 'div'
- **F** adiciona operações com float e double: 'fadd.s' para somar floats, 'fmul.s' para multiplicar
- Podes combinar: RV32IMF - base com multiplicação e floating-point

E podes criar extensões personalizadas para IA, IoT, o que quiseres. Cada aplicação tem o ISA optimizado para si.

Facto crucial: a própria **MIPS Technologies anunciou transição para RISC-V** entre 2021-2025. Até a empresa do MIPS reconheceu que o futuro é open-source e modular."

**Pontos-chave:**

- Open-source = democratização
- Modularidade = cada aplicação optimizada
- RV32I base + extensões M, F, etc.
- Até a MIPS migrou!

---

## SLIDE 15: Assembly - Futuro e Modularização

**Tempo: 1-1.5 minutos**

### O que dizer:

"Há quem pense que o Assembly vai desaparecer. Pelo contrário - o RISC-V torna-o **mais relevante**, não menos. Porquê?

Quando criamos extensões ISA customizadas para aplicações específicas, precisamos de Assembly para as programar. Assembly passa de ferramenta de optimização a **motor de inovação**.

Além disso, mantém relevância em:

- **Auditoria e Segurança**: Para perceber exactamente o que o código faz ao nível do hardware
- **IoT e Edge Computing**: Biliões de dispositivos com recursos mínimos - cada byte e cada ciclo contam

O mais interessante: na computação neuromórfica - chips que imitam neurónios e sinapses do cérebro - cada sector pode ter um módulo com ISA próprio. Modularização significa que Assembly se adapta mesmo a arquitecturas radicalmente diferentes do RISC tradicional."

**Pontos-chave:**

- Assembly não morre, evolui
- Modularização = novas oportunidades
- IoT/edge crítico
- Neuromórfica = futuro híbrido

---

## SLIDE 16: Prática de Assembly

**Tempo: 1 minuto**

### O que dizer:

"Um ponto interessante sobre aprender e programar em Assembly:

Escrever código Assembly é mais desafiante que em linguagens high-level. Há **menos código escrito** em termos de volume de projectos, e leva **mais tempo** para programar - tens de gerir tudo manualmente.

Mas em compensação, ganhas **maior capacidade de optimização** - controlo total sobre cada instrução permite optimizações impossíveis em C ou Python. E ganhas **maior compreensão** do código - sabes exactamente o que cada linha faz ao nível do hardware.

É o trade-off: mais esforço, mais tempo, mas mais controlo e compreensão. Por isso é usado onde realmente importa."

**Pontos-chave:**

- Menos código escrito globalmente
- Mais tempo de desenvolvimento
- Mas: maior optimização + compreensão profunda
- Trade-off consciente

---

## SLIDE 17: Apollo Guidance Computer (AGC)

**Tempo: 1-1.5 minutos**

### O que dizer:

"Um exemplo histórico fascinante do poder do Assembly: o Apollo Guidance Computer.

Estamos a falar de um computador com cerca de **36 kilobytes de ROM** - menos que um email com anexo - e apenas **2 kilobytes de RAM** - equivalente a meia página de texto.

Durante a descida da Apollo 11 à Lua, soaram os alarmes 1201 e 1202 - **sobrecarga do computador**. Com recursos tão limitados, qualquer linguagem high-level teria falhado.

Foi graças ao **sistema de prioridades** implementado em Assembly que o computador conseguiu descartar tarefas não-críticas e focar no essencial: controlar a descida. O Assembly permitiu gerir cada byte de memória e cada ciclo de CPU com precisão cirúrgica.

Literalmente, o Assembly levou o Homem à Lua."

**Pontos-chave:**

- 36KB ROM, 2KB RAM (ridículo para a tarefa)
- Alarmes 1201/1202 = sobrecarga
- Sistema de prioridades em Assembly = salvou a missão
- Gestão perfeita de recursos limitados
- "Assembly levou-nos à Lua" (fecho forte)

---

## SLIDE 18: HAL/S

**Tempo: 1 minuto**

### O que dizer:

"Após as missões Apollo, a NASA percebeu que precisava evoluir. Desenvolver sistemas aeroespaciais directamente em Assembly era demasiado lento e inconsistente para projectos cada vez mais complexos.

Juntando isto ao contexto da Guerra Fria - onde havia urgência em avançar tecnologicamente - criaram a linguagem **HAL/S** em 1968.

HAL/S era uma linguagem de alto nível especificamente desenhada para sistemas aeroespaciais de tempo real. Permitia desenvolvimento mais rápido mantendo as garantias de segurança e previsibilidade necessárias.

Foi usada no Space Shuttle e noutros projectos críticos da NASA durante décadas."

**Pontos-chave:**

- NASA precisava evoluir de Assembly puro
- Guerra Fria = pressão temporal
- HAL/S = high-level para aeroespacial
- Space Shuttle usou HAL/S

---

## SLIDE 19: Simulação

**Tempo: 1.5 minutos**

### O que dizer:

"Neste slide temos uma simulação que fizemos: o mesmo algoritmo escrito em HAL/S e depois traduzido para MIPS Assembly.

[Explicar brevemente o código se houver tempo e se estiver visível]

O exercício foi interessante porque mostrou concretamente a diferença entre uma linguagem de alto nível especializada como HAL/S e Assembly puro. O código HAL/S é mais compacto e legível, mas o MIPS dá controlo total sobre cada registo e cada instrução.

Este tipo de simulação permite-nos perceber os trade-offs: HAL/S **reduz custos de desenvolvimento** e **aumenta velocidade de programação**, mas MIPS dá **máxima eficiência** em recursos limitados."

**Pontos-chave:**

- Mesmo algoritmo, duas linguagens
- HAL/S: compacto, legível
- MIPS: controlo total, máxima eficiência
- Trade-offs claros: custo vs desempenho

---

## SLIDE 20: Tendências Futuras - Computação Neuromórfica

**Tempo: 1.5 minutos**

### O que dizer:

"Agora vamos falar do futuro: computação neuromórfica.

Temos duas abordagens a redes neuronais:

**Artificial Neural Networks (ANNs)** - são as redes tradicionais que usamos hoje. Executam em GPUs e CPUs normais, processam informação em camadas, usam backpropagation para aprender. É o que está por trás do ChatGPT, reconhecimento de imagem, etc.

**Spiking Neural Networks (SNNs)** - imitam neurónios biológicos reais. Comunicam através de 'spikes' eléctricos, como neurónios verdadeiros. São biologicamente plausíveis e extremamente eficientes energeticamente.

O problema: SNNs precisam de **hardware neuromórfico** - chips desenhados especificamente para elas. Exemplos: Intel Loihi, IBM TrueNorth. E para programar estes chips? Precisamos de Assembly adaptado às suas arquitecturas únicas.

É uma área emergente mas promete revolucionar a IA, especialmente em dispositivos de baixo consumo."

**Pontos-chave:**

- ANNs = tradicional (GPUs, backprop)
- SNNs = biológicas (spikes, eficientes)
- SNNs precisam hardware específico
- Assembly será necessário para programar

---

## SLIDE 21: Tendências Futuras - Neuromórfica vs QASM

**Tempo: 1 minuto**

### O que dizer:

"Este slide compara visualmente as arquitecturas. À esquerda vemos a arquitectura neuromórfica - neurónios interligados processando spikes. À direita, conceitos de computação quântica com QASM (Quantum Assembly).

Ambas representam **paradigmas radicalmente diferentes** da computação tradicional de von Neumann. E ambas vão precisar de Assembly especializado para serem programadas eficientemente.

O Assembly não vai desaparecer - vai adaptar-se a estas novas arquitecturas. O conceito fundamental - **linguagem de baixo nível que dá controlo directo sobre hardware** - mantém-se válido mesmo quando o hardware muda drasticamente."

**Pontos-chave:**

- Arquitecturas radicalmente diferentes
- Neuromórfica: spikes e neurónios
- Quântica: qubits e superposição
- Assembly adapta-se, não desaparece

---

## SLIDE 22: Conclusões & Discussão

**Tempo: 1.5 minutos**

### O que dizer:

"Para concluir:

**1. Simulação HAL/S → MIPS**: Vimos que a transição para linguagens de mais alto nível **reduz custos** e **aumenta rapidez** de desenvolvimento, mas Assembly mantém-se necessário onde cada ciclo conta.

**2. NASM vs MIPS**: NASM oferece source code curto com instruções complexas; MIPS oferece source code mais longo mas execução mais rápida. Trade-offs fundamentais que persistem.

**3. RISC-V**: Representa uma **nova filosofia** - hardware aberto, modular, customizável. E o Assembly é a ferramenta que permite explorar estas novas fronteiras.

**4. Aplicações emergentes**: Com o boom da IA, robótica, rovers espaciais, bioengenharia como Neuralink - todas estas áreas precisam de controlo de baixo nível.

**Conclusão final**: Apesar da prevalência de linguagens high-level, **Assembly continua absolutamente relevante** na computação moderna. Não é uma questão de Assembly _ou_ high-level - é Assembly _e_ high-level, cada um no seu contexto apropriado."

**Pontos-chave:**

- 4 conclusões principais
- Complementaridade, não exclusão
- Assembly adapta-se e evolui
- Futuro = híbrido e especializado

---

## SLIDE 23: Curiosidades Históricas - Rovers

**Tempo: 30 segundos**

### O que dizer:

"Curiosidade rápida: os rovers marcianos - Curiosity, Perseverance - usam processadores RAD750, baseados em PowerPC. Precisam ser radiation-hardened e extremamente confiáveis. Muito do código crítico é escrito ou optimizado em Assembly para garantir operação em condições extremas com recursos limitados."

**Pontos-chave:**

- Rovers = Assembly em Marte
- RAD750, radiation-hardened
- Recursos limitados, condições extremas

---

## SLIDE 24: Curiosidades Linguísticas & Fonéticas

**Tempo: 30-45 segundos**

### O que dizer:

"E para terminar com uma curiosidade linguística: sabiam que em português temos palavras específicas para aterrar em diferentes corpos celestes?

**Alunagem** (a-lu-NA-gem) - aterrar na Lua **Amaragem** (a-ma-RA-gem ou a-MAR-a-gem) - aterrar na água, do termo 'mar' **Amartagem** (a-mar-TA-gem) - aterrar em Marte

É interessante como até a língua portuguesa criou vocabulário específico para a era espacial. E curiosamente, muita terminologia aeroespacial vem do mundo naval: docking, deck, bridge, cabin, captain, bow, stern..."

**Pontos-chave:**

- Neologismos portugueses para exploração espacial
- Terminologia naval na aeroespacial
- Toque leve, cultural, para terminar

---

## SLIDE 25: OBRIGADO

**Tempo: 5 segundos**

### O que dizer:

"Obrigado pela vossa atenção. Estou disponível para perguntas."

**Pontos-chave:**

- Breve e directo
- Abrir para Q&A

---

## DICAS GERAIS DE APRESENTAÇÃO

### Transições entre secções:

**Histórica → Contemporânea** (Slide 5): "Da história à actualidade" **Filosofias → Prática** (Slide 9): "Das diferenças teóricas às aplicações práticas" **MIPS/RISC-V** (Slide 13): "Agora comparando duas arquitecturas específicas" **Casos de estudo** (Slide 17): "Vejamos exemplos concretos" **Futuro** (Slide 20): "E o futuro? Ainda mais interessante"

### Gestão de tempo:

- Slides 1-12: ~12 minutos (contexto e bases)
- Slides 13-15: ~4 minutos (MIPS/RISC-V)
- Slides 16-22: ~5 minutos (casos e conclusões)
- Slides 23-24: ~1 minuto (curiosidades)
- Total: ~18-20 minutos + Q&A

### Tom geral:

- **Profissional** mas **acessível**
- **Entusiasmo** controlado nos momentos-chave (Apollo, RISC-V, neuromórfica)
- **Pausas** breves após factos importantes
- **Contacto visual** com a audiência
- **Evitar** ler slides - usar como suporte visual apenas

### Se houver perguntas específicas:

**"Assembly não é muito lento para desenvolver?"** → "Sim, mas é usado onde o tempo de desenvolvimento compensa - sistemas críticos, optimizações finais, hardware novo."

**"Toda a gente devia aprender Assembly?"** → "Não necessariamente. Mas entender os princípios dá uma base sólida de como computadores realmente funcionam."

**"RISC-V vai substituir x86?"** → "Em certas áreas sim - IoT, embedded, custom silicon. Em desktops, x86 tem vantagem do ecossistema estabelecido."

**"Assembly tem futuro?"** → "Absolutamente. Sempre que há hardware novo - neuromórfico, quântico, aceleradores IA - precisamos de Assembly especializado."

### Pontos de ênfase (tom mais forte):

- "Kathleen Booth em 1947 - literalmente inventou o conceito"
- "O Assembly levou o Homem à Lua"
- "Até a própria MIPS migrou para RISC-V"
- "Assembly não desaparece - adapta-se"

---

## BACKUP - Se o tempo for curto:

**Slides que podem ser resumidos rapidamente:**

- Slide 4 (Outras personalidades): "Rapidamente, Wheeler e Rochester..."
- Slide 12 (Tabela): "Esta tabela resume os assemblers"
- Slide 16 (Prática): "Ponto rápido sobre aprender Assembly..."
- Slides 23-24 (Curiosidades): Podem ser saltados se necessário

**Slides que NÃO devem ser cortados:**

- 1-3 (Introdução e Kathleen)
- 5 (Relevância)
- 13-15 (MIPS/RISC-V)
- 17 (Apollo)
- 22 (Conclusões)