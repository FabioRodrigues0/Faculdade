---
tags:
  - ACOMP
---

# A Evolução das Arquitecturas RISC e a Relevância Contínua do Assembly: De MIPS a RISC-V

## Introdução

Apesar do domínio das linguagens de alto nível no desenvolvimento de software, a linguagem Assembly continua a ser fundamental em contextos que exigem controlo directo sobre o hardware, eficiência e determinismo (Irvine, 2015). A sua relevância é constantemente reafirmada pela evolução das próprias arquitecturas de hardware. A transição de arquitecturas estabelecidas e proprietárias, como a MIPS, para ecossistemas abertos e modulares, como o RISC-V, não só transforma o design de processadores, como também revitaliza o papel do Assembly, demonstrando a sua importância duradoura e as suas tendências futuras.
## A Fundação do Assembly na Arquitectura de Computadores

A linguagem Assembly serve como uma ponte directa entre o software e o hardware, permitindo um controlo granular sobre os recursos do processador, como registos, gestão de memória e ciclos de execução. Este controlo é indispensável em domínios críticos, como embedded systems (e.g., IoT, aviónica, dispositivos médicos), onde a eficiência e a previsibilidade temporal são requisitos não-negociáveis (Irvine, 2015; Welsh & Knaggs, n.d.). O conhecimento em Assembly é também crucial em áreas como a cibersegurança, para reverse engineering e análise de malware, e no desenvolvimento de componentes de baixo nível de sistemas operativos, como bootloaders e drivers (Blum, 2005; "Assembly Language," 2025).

Do ponto de vista educacional, o Assembly é uma ferramenta pedagógica essencial para a compreensão profunda da arquitectura de computadores, permitindo que os estudantes visualizem conceitos abstractos em acção (Vu, 2016). É neste contexto que arquitecturas como a MIPS ganharam proeminência.

## MIPS: A Herança de uma Arquitectura Determinística

Desenvolvida nos anos 80, a arquitectura MIPS (Microprocessor without Interlocked Pipeline Stages) tornou-se um pilar no ensino da arquitectura de computadores e em embedded systems. Caracteriza-se por um conjunto de instruções (ISA) fixo e um modelo de memória estrito, sequential consistency, que garante que as operações são vistas em ordem sequencial (Patterson & Hennessy, 2017). Esta natureza determinística e previsível simplificou o desenvolvimento de compiladores e a análise de desempenho, tornando-a uma plataforma estável e robusta para a aprendizagem e para sistemas legados.

No entanto, a sua natureza maioritariamente proprietária e o seu ISA monolítico limitaram a sua flexibilidade e capacidade de inovação. Nas versões mais antigas da arquitectura MIPS, operações como o branch condicional exigiam duas instruções (e.g., `slt` seguida de `bne`), embora implementações mais recentes tenham introduzido instruções de comparação e salto combinadas para maior eficiência (Patterson & Hennessy, 2021).

## RISC-V: A Inovação através de um Ecossistema Aberto e Modular

Criado em 2010 na Universidade de Berkeley, o RISC-V representa uma mudança de paradigma. Sendo uma arquitectura de hardware open-source, elimina os custos de licenciamento e promove uma cultura de colaboração e inovação (Asanović et al., 2016). A sua principal característica é a modularidade: um ISA base mínimo (e.g., RV32I) pode ser estendido com extensões standard (e.g., 'F' para ponto flutuante, 'M' para multiplicação) ou customizadas, permitindo a criação de processadores altamente especializados para domínios como IA, IoT e computação de alto desempenho (Waterman, 2016).

Esta flexibilidade reflecte-se no design do ISA. O RISC-V adopta um modelo de memória relaxado, que melhora o desempenho ao permitir a reordenação de acessos, exigindo o uso de barreiras de memória (instruções `fence`) para garantir a consistência quando necessário. Além disso, oferece instruções mais eficientes, como os branches comparativos directos (e.g., `blt`), que simplificam o hardware e reduzem a latência (Patterson & Hennessy, 2017). A própria MIPS Technologies, reconhecendo esta tendência, anunciou a sua transição para designs baseados em RISC-V (MIPS Technologies, 2021–2025).

## O Impacto na Relevância e Futuro do Assembly

A evolução de MIPS para RISC-V não torna o Assembly obsoleto; pelo contrário, reforça a sua relevância e aponta novas direcções. A natureza aberta do RISC-V permite que empresas e investigadores criem extensões de ISA customizadas, e para programar e validar estas novas instruções, o Assembly é indispensável. Deixa de ser apenas uma ferramenta para optimização de código legado e passa a ser uma linguagem para inovação em hardware. Em sistemas críticos e de alta segurança, a transparência de uma arquitectura aberta como o RISC-V permite uma auditoria mais rigorosa. O Assembly continua a ser a ferramenta de eleição para implementar rotinas seguras, como as de criptografia com execução em tempo constante (constant-time), e para verificar a implementação de baixo nível do hardware.

A expansão da IoT e da computação de extremidade (edge computing) cria uma procura crescente por processadores de baixo consumo e alta eficiência. O Assembly permite extrair o máximo de desempenho destes dispositivos com recursos limitados, um requisito que arquitecturas flexíveis como o RISC-V procuram satisfazer. A computação quântica e neuromórfica, embora se afastem das arquitecturas tradicionais, continuarão a necessitar de alguma forma de programação de baixo nível para optimizar algoritmos e controlar o hardware de forma precisa (Welsh & Knaggs, n.d.). O princípio do controlo granular sobre a máquina, que o Assembly representa, permanecerá.

## Conclusão

A evolução das arquitecturas MIPS e RISC-V demonstra que o progresso no design de hardware não diminui a importância do Assembly, mas antes redefine e expande o seu papel. Ambas as arquitecturas continuam a evoluir para responder às necessidades emergentes em domínios como a robótica, a inteligência artificial e a IoT. Na robótica, onde o controlo em tempo real de actuadores e sensores é crítico, o Assembly permite a implementação de rotinas de baixa latência essenciais para a coordenação precisa de movimentos. Em sistemas de IA embarcados, a optimização de operações matriciais e de inferência através de instruções SIMD e extensões customizadas do RISC-V requer programação de baixo nível para maximizar o desempenho energético. No vasto ecossistema IoT, onde milhares de milhões de dispositivos operam com recursos extremamente limitados, o Assembly permanece indispensável para garantir eficiência, segurança e determinismo.

O Assembly deixa de ser apenas uma ferramenta para optimizar sistemas legados e torna-se um motor de inovação, permitindo aos programadores explorar e definir as fronteiras do novo hardware. Longe de ser uma relíquia, a programação em Assembly mantém-se como uma competência especializada e vital, essencial para profissionais e investigadores em áreas onde o controlo, a eficiência e a segurança são inegociáveis. O futuro da computação, impulsionado por arquitecturas abertas e por paradigmas emergentes como a robótica avançada e a IA de extremidade, continuará a ser escrito, em parte, em Assembly.

## Referências

Assembly language. (2025). In _Wikipedia_. https://en.wikipedia.org/wiki/Assembly_language

Asanović, K., Patterson, D. A., & Members of the RISC-V Foundation. (2016). The case for open instruction sets. _Communications of the ACM_.

Blum, R. (2005). _Professional assembly language_. Wiley.

Irvine, K. R. (2015). _Assembly language for x86 processors_ (7th ed.). Pearson.

MIPS Technologies. (2020). _MIPS32 Architecture for Programmers_.

MIPS Technologies. (2021–2025). _MIPS Transition to RISC-V Compatible Designs_. Documentação oficial.

Patterson, D. A., & Hennessy, J. L. (2017). _Computer organization and design: The hardware/software interface – RISC-V Edition_. Morgan Kaufmann.

Patterson, D. A., & Hennessy, J. L. (2021). _Computer organization and design RISC-V Edition_ (2nd ed.). Morgan Kaufmann.

RISC-V International. (2024–2025). _RISC-V Specifications and Ecosystem Reports_. riscv.org.

RISC-V International & Linux Foundation. (2025). _State of RISC-V Software Ecosystem_. Relatório anual.

Vários autores. (2023–2025). Artigos e benchmarks de migração MIPS → RISC-V (diversas conferências: Hot Chips, ISCA, MICRO).

Vu, H. (2016). _The Forgotten Assembly Programming Language_. Journal of Software and Systems Engineering. https://jsaer.com/download/vol-3-iss-1-2016/JSAER2016-03-01-17-20.pdf

Waterman, A. (2016). _Design of the RISC-V Instruction Set Architecture_ [Tese de Doutoramento, University of California, Berkeley].

Waterman, A., & Asanović, K. (Eds.). (2017). _The RISC-V Instruction Set Manual, Volume I: User-Level ISA_. RISC-V Foundation.

Welsh, S., & Knaggs, P. (n.d.). _ARM Assembly Language Programming_. University of Bournemouth.