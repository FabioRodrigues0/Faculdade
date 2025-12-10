# 🃏 JOKER - Jogo de Conhecimento

> Programa inspirado no concurso "JOKER" da RTP (canal de TV portuguesa)

---

## 📋 Índice

- [Descrição Geral](#-descrição-geral)
- [Estrutura do Jogo](#-estrutura-do-jogo)
- [Sistema de Tempo](#-sistema-de-tempo)
- [Árvore do Dinheiro](#-árvore-do-dinheiro)
- [Sistema de Jokers](#-sistema-de-jokers)
- [Penalizações](#-penalizações)
- [Rondas Bónus](#-rondas-bónus)
- [Super Joker](#-super-joker)
- [Super Resposta](#-super-resposta)
- [Seleção de Categorias](#-seleção-de-categorias)
- [Regra da 15ª Pergunta](#-regra-da-15ª-pergunta)

---

## 🎯 Descrição Geral

O concurso **JOKER** é um teste de conhecimento onde o Concorrente deve responder a **15 perguntas**, cada uma com **4 opções de resposta** (apenas uma correta).

**Objetivo:** Chegar à 15ª e última pergunta para ganhar um prémio.

---

## 📊 Estrutura do Jogo

```
┌─────────────────────────────────────┐
│  Pergunta 1                         │
│  Pergunta 2                         │
│  Pergunta 3                         │
│  Pergunta 4                         │
│  Pergunta 5 ★ (Escolha de Categoria)│
├─────────────────────────────────────┤
│  🎁 RONDA BÓNUS 1 (1 minuto)        │
├─────────────────────────────────────┤
│  Pergunta 6                         │
│  Pergunta 7                         │
│  Pergunta 8                         │
│  Pergunta 9                         │
│  Pergunta 10 ★ (Escolha de Categoria)│
├─────────────────────────────────────┤
│  🎁 RONDA BÓNUS 2 (1min 30seg)      │
├─────────────────────────────────────┤
│  Pergunta 11                        │
│  Pergunta 12                        │
│  Pergunta 13                        │
│  Pergunta 14                        │
│  Pergunta 15 🏆 (Pergunta Final)    │
└─────────────────────────────────────┘
```

---

## ⏱️ Sistema de Tempo

| Perguntas | Tempo Disponível |
| :-------: | :--------------: |
|   1 - 5   |   30 segundos    |
|  6 - 10   |   40 segundos    |
|  11 - 15  |   50 segundos    |

> ⚠️ **Nota:** Cada Joker usado adiciona **+15 segundos** de reflexão.

---

## 💰 Árvore do Dinheiro

| Nível | Prémio  |
| :---: | :-----: |
|   0   |   0€    |
|   1   |  250€   |
|   2   |  500€   |
|   3   | 1.000€  |
|   4   | 2.500€  |
|   5   | 5.000€  |
|   6   | 10.000€ |
|   7   | 25.000€ |
|   8   | 75.000€ |

✅ **Resposta correta** → Sobe 1 nível  
❌ **Resposta incorreta** → Ver [Penalizações](#-penalizações)

---

## 🃏 Sistema de Jokers

O Concorrente começa com **9 Jokers**.

### Como funcionam:

- Cada Joker **elimina 1 resposta incorreta**
- Cada Joker dá **+15 segundos** de reflexão
- Podem ser usados **0, 1, 2 ou 3 Jokers** por pergunta
- Usar **3 Jokers** numa pergunta = resposta garantida ✓

### Valor dos Jokers:

> Cada Joker ganho nas Rondas Bónus vale **50€**, recebido caso o concorrente termine com 0€.

---

## ⚠️ Penalizações

### Por Resposta Incorreta:

| Jokers Restantes | Penalização                    |
| :--------------: | :----------------------------- |
|    4+ Jokers     | Perde 3 Jokers                 |
|     3 Jokers     | Perde 3 Jokers                 |
|     2 Jokers     | Perde 2 Jokers + desce 1 nível |
|     1 Joker      | Perde 1 Joker + desce 2 níveis |
|     0 Jokers     | Desce 3 níveis                 |

> ⏰ **Timeout:** Não responder a tempo = resposta incorreta

---

## 🎁 Rondas Bónus

O **acompanhante** (familiar ou amigo próximo) participa através de um tablet.

### Mecânica:

- Perguntas com **2 opções** de resposta
- Concorrente lê as opções **da esquerda para a direita**
- Acompanhante verbaliza a resposta escolhida

### Recompensas:

|  Ronda Bónus  |  Tempo   | Respostas Certas |  Jokers Ganhos   |
| :-----------: | :------: | :--------------: | :--------------: |
| 1ª (após P5)  |  1 min   |   5 respostas    |  +1 Joker (50€)  |
| 1ª (após P5)  |  1 min   |   10 respostas   | +2 Jokers (100€) |
| 2ª (após P10) | 1min 30s |   5 respostas    |  +1 Joker (50€)  |
| 2ª (após P10) | 1min 30s |   10 respostas   | +2 Jokers (100€) |

> 💵 **Máximo acumulável:** 200€ (4 Jokers × 50€)

---

## 🦸 Super Joker

O acompanhante serve como uma ajuda extra especial.

### Características:

- ✅ Pode ser usado **1 vez** durante todo o jogo
- ❌ **NÃO** pode ser usado na 15ª pergunta
- ⏱️ Dá **+15 segundos** de reflexão adicional
- 👥 O acompanhante junta-se ao concorrente para ajudar

---

## 🎯 Super Resposta

Uma ajuda única baseada na resposta do acompanhante no tablet.

### Regras:

- ✅ Pode ser usada **1 vez** durante todo o jogo
- ❌ **NÃO** pode ser usada na 15ª pergunta
- ❌ **NÃO** pode ser combinada com outras ajudas na mesma pergunta
- ⏱️ **NÃO** dá tempo adicional
- 🔒 Bloqueia a opção que o acompanhante escolheu no tablet

> ⚠️ Se o Super Joker ainda não respondeu, deve fazê-lo imediatamente.

---

## 🏷️ Seleção de Categorias

Na **5ª** e **10ª** pergunta, o concorrente escolhe a categoria.

### Funcionamento:

- 8 categorias disponíveis (de 15 possíveis, selecionadas aleatoriamente)
- Categoria da 5ª pergunta **não pode** ser repetida na 10ª

### Categorias Possíveis:

|                |                       |                 |
| :------------: | :-------------------: | :-------------: |
|    🎨 Artes    |     📰 Atualidade     |   🔬 Ciências   |
| 🎬 Cinema e TV | 🇵🇹 Cultura Portuguesa | ❓ Curiosidades |
|  ⚽ Desporto   |    🍽️ Gastronomia     |  🌍 Geografia   |
|  📜 História   | 📝 Língua Portuguesa  |  📚 Literatura  |
|   🎵 Música    |   👤 Personalidades   |  💻 Tecnologia  |

---

## 🏆 Regra da 15ª Pergunta

A última pergunta tem regras especiais.

### Opções do Concorrente:

| Opção                        | Resultado                              |
| :--------------------------- | :------------------------------------- |
| **Não responder**            | Desce 1 nível (fica no nível anterior) |
| **Responder corretamente**   | Sobe 1 nível                           |
| **Responder incorretamente** | Aplica penalizações normais            |

### Restrições:

- ❌ **Super Joker** não pode ser usado
- ❌ **Super Resposta** não pode ser usada
- ⚠️ Se usar um Joker normal, **é obrigado a responder**

> ⏰ Não comunicar decisão a tempo = resposta incorreta

---

## 🚫 Regras de Fair Play

- ❌ Proibida comunicação com terceiros para obter respostas
- ❌ Proibido uso de dispositivos eletrónicos (smartphones, etc.)
- ❌ Proibidos códigos secretos entre concorrente e público
- ⚠️ Se alguém do público disser a resposta, a pergunta é substituída
- ⚠️ Infrações repetidas podem cancelar a participação

---

## 📝 Resumo Rápido

```
🃏 9 Jokers iniciais
💰 9 níveis de prémio (0€ → 75.000€)
❓ 15 perguntas no total
🎁 2 Rondas Bónus (até +4 Jokers)
🦸 1 Super Joker (ajuda do acompanhante)
🎯 1 Super Resposta (resposta do tablet)
🏷️ 2 escolhas de categoria (P5 e P10)
```

---

_Boa sorte! 🍀_
