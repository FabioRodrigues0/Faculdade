#!/usr/bin/env python3
"""
Jogo de Conhecimento - Simulacao do concurso Joker da RTP1

Funcionalidades:
- 12 perguntas com 4 respostas cada (uma correta)
- 7 jokers que permitem eliminar uma resposta incorreta
- Penalizacoes: resposta errada custa 3 jokers (ou desce nivel na arvore do dinheiro)
- Jokers especiais: "50/50" elimina 2 erradas, "Super Joker" elimina 1 errada (use ate 1 vez)
- Pergunta 12: opcao de nao responder

Conceitos aplicados: ficheiros JSON, estruturas de dados, docstrings, funcoes e controlo de fluxo.
"""

from __future__ import annotations

import random
import sys
from typing import Dict, List

# Perguntas e respostas integradas directamente no codigo
QUESTIONS = [
    {
        "numero": 1,
        "pergunta": "Qual e a capital de Portugal?",
        "respostas": ["Lisboa", "Porto", "Covilha", "Coimbra"],
        "correta": 0,
    },
    {
        "numero": 2,
        "pergunta": "Em que ano terminou a Segunda Guerra Mundial?",
        "respostas": ["1943", "1944", "1945", "1946"],
        "correta": 2,
    },
    {
        "numero": 3,
        "pergunta": "Qual e o planeta mais proximo do Sol?",
        "respostas": ["Venus", "Mercurio", "Marte", "Terra"],
        "correta": 1,
    },
    {
        "numero": 4,
        "pergunta": "Quem escreveu 'Dom Casmurro'?",
        "respostas": ["Jose Saramago", "Machado de Assis", "Fernando Pessoa", "Camoes"],
        "correta": 1,
    },
    {
        "numero": 5,
        "pergunta": "Qual e o rio mais longo do mundo?",
        "respostas": ["Amazonas", "Nilo", "Yangtze", "Mississippi"],
        "correta": 1,
    },
    {
        "numero": 6,
        "pergunta": "Quantos continentes existem?",
        "respostas": ["5", "6", "7", "8"],
        "correta": 2,
    },
    {
        "numero": 7,
        "pergunta": "Em que ano Portugal se tornou republica?",
        "respostas": ["1889", "1910", "1926", "1945"],
        "correta": 1,
    },
    {
        "numero": 8,
        "pergunta": "Qual e o elemento quimico com simbolo 'Au'?",
        "respostas": ["Prata", "Aluminio", "Ouro", "Patio"],
        "correta": 2,
    },
    {
        "numero": 9,
        "pergunta": "Quantos lados tem um hexagono?",
        "respostas": ["4", "5", "6", "8"],
        "correta": 2,
    },
    {
        "numero": 10,
        "pergunta": "Quem foi o primeiro Presidente dos EUA?",
        "respostas": [
            "Thomas Jefferson",
            "George Washington",
            "John Adams",
            "James Madison",
        ],
        "correta": 1,
    },
    {
        "numero": 11,
        "pergunta": "Qual e a maior floresta tropical do mundo?",
        "respostas": [
            "Floresta do Congo",
            "Floresta da Taiga",
            "Floresta Amazonica",
            "Floresta de Borneú",
        ],
        "correta": 2,
    },
    {
        "numero": 12,
        "pergunta": "Em que ano foi descoberto o Ouro no Brasil?",
        "respostas": ["1693", "1700", "1750", "1800"],
        "correta": 0,
    },
]


def get_questions() -> List[Dict]:
    """Retorna a lista de perguntas integradas no codigo."""
    return QUESTIONS


def display_question(q: Dict, question_number: int) -> None:
    """Exibe a pergunta e as respostas."""
    print(f"\n--- Pergunta {question_number}/12 ---")
    print(f"Pergunta: {q['pergunta']}\n")
    for i, resposta in enumerate(q["respostas"]):
        print(f"  {chr(65 + i)}) {resposta}")


def eliminate_wrong_answer(q: Dict, already_eliminated: set[int]) -> int | None:
    """Elimina uma resposta incorreta (nao a correta, nao eliminadas). Retorna indice ou None."""
    correct_idx = q["correta"]
    wrong_options = [
        i for i in range(4) if i != correct_idx and i not in already_eliminated
    ]
    if not wrong_options:
        return None
    idx = random.choice(wrong_options)
    already_eliminated.add(idx)
    return idx


def use_joker(
    joker_type: str, q: Dict, eliminated: set[int], jokers_count: dict
) -> bool:
    """Usa um joker especifico. Retorna True se bem-sucedido, False se ja usado/esgotado."""
    if joker_type == "50/50":
        if not jokers_count.get("50/50", True):
            print("O joker '50/50' ja foi usado!")
            return False
        # Elimina 2 respostas incorretas
        for _ in range(2):
            eliminate_wrong_answer(q, eliminated)
        jokers_count["50/50"] = False
        print("[OK] Joker '50/50' usado! 2 respostas eliminadas.")
        return True

    elif joker_type == "super":
        if not jokers_count.get("super", True):
            print("O Super Joker ja foi usado!")
            return False
        # Elimina 1 resposta incorreta
        idx = eliminate_wrong_answer(q, eliminated)
        if idx is None:
            print("Nenhuma resposta disponivel para eliminar.")
            return False
        jokers_count["super"] = False
        print(f"[OK] Super Joker usado! Resposta {chr(65 + idx)} eliminada.")
        return True

    elif joker_type == "regular":
        if jokers_count["regular"] <= 0:
            print("Nao tem mais jokers!")
            return False
        # Elimina 1 resposta incorreta
        idx = eliminate_wrong_answer(q, eliminated)
        if idx is None:
            print("Nenhuma resposta disponivel para eliminar.")
            return False
        jokers_count["regular"] -= 1
        print(
            f"[OK] Joker regular usado! Resposta {chr(65 + idx)} eliminada. Restam {jokers_count['regular']} jokers."
        )
        return True

    return False


def play_game(questions: List[Dict]) -> int:
    """Joga o jogo completo. Retorna o nivel final (pergunta a que chegou)."""
    jokers_count = {"regular": 7, "50/50": True, "super": True}

    current_level = 0

    for q_idx, q in enumerate(questions):
        current_level = q_idx + 1
        eliminated = set()  # indices de respostas eliminadas nesta pergunta

        while True:
            display_question(q, current_level)

            # Mostrar respostas disponiveis
            print("\nRespostas disponiveis:")
            for i, resposta in enumerate(q["respostas"]):
                marker = " (eliminada)" if i in eliminated else ""
                print(f"  {chr(65 + i)}) {resposta}{marker}")

            print(
                f"\nJokers: {jokers_count['regular']} regulares | 50/50: {'Sim' if jokers_count['50/50'] else 'Nao'} | Super: {'Sim' if jokers_count['super'] else 'Nao'}"
            )

            # Especial: pergunta 12
            if current_level == 12:
                print("\n[Pergunta final] Pode escolher:")
                print("  [R]esponder")
                print("  [P]assar (descer um nivel)")
                print("  [J]oker")
                choice = input("Escolha: ").strip().lower()

                if choice.startswith("p"):
                    print(
                        f"Decidiu passar. Desce um nivel. Nivel final: {current_level - 1}"
                    )
                    return current_level - 1
                elif not choice.startswith("r") and not choice.startswith("j"):
                    print("Opcao invalida.")
                    continue
            else:
                print("  [R]esponder | [J]oker")
                choice = input("Escolha: ").strip().lower()

            # Processar escolha
            if choice.startswith("j"):
                print("\nTipo de joker:")
                print("  [1] Joker regular (elimina 1 resposta)")
                print(
                    f"  [2] 50/50 (elimina 2) {'[Disponivel]' if jokers_count['50/50'] else '[Usado]'}"
                )
                print(
                    f"  [3] Super Joker {'[Disponivel]' if jokers_count['super'] else '[Usado]'}"
                )
                print("  [0] Cancelar")
                joker_choice = input("Escolha: ").strip()

                if joker_choice == "1":
                    use_joker("regular", q, eliminated, jokers_count)
                elif joker_choice == "2":
                    use_joker("50/50", q, eliminated, jokers_count)
                elif joker_choice == "3":
                    use_joker("super", q, eliminated, jokers_count)
                continue

            # Responder pergunta
            if choice.startswith("r"):
                answer = input("Resposta (A/B/C/D): ").strip().upper()
                if answer not in ["A", "B", "C", "D"]:
                    print("Resposta invalida.")
                    continue

                answer_idx = ord(answer) - ord("A")

                if answer_idx in eliminated:
                    print("Essa resposta foi eliminada!")
                    continue

                if answer_idx == q["correta"]:
                    print("[OK] Resposta correta! Avancou para a proxima pergunta.")
                    break  # Avanca para a proxima pergunta
                else:
                    print(
                        f"[ERRO] Resposta errada! A resposta correta era: {chr(65 + q['correta'])}) {q['respostas'][q['correta']]}"
                    )

                    # CORRECAO: Penalizacao e DECISAO sobre continuar
                    if jokers_count["regular"] >= 3:
                        jokers_count["regular"] -= 3
                        print(f"Perdeu 3 jokers. Restam: {jokers_count['regular']}")
                        # CONTINUA no jogo! Volta a tentar esta pergunta
                        print("Pode tentar novamente ou usar um joker!")
                        eliminated.clear()  # Reset respostas eliminadas para nova tentativa
                        break  # Volta ao topo do while, permitindo nova tentativa
                    elif jokers_count["regular"] > 0:
                        lost = jokers_count["regular"]
                        jokers_count["regular"] = 0
                        print(f"Perdeu {lost} jokers restantes e desce um nivel.")
                        return current_level - 1  # Sai do jogo
                    else:
                        print("Sem jokers restantes. Desce 3 niveis.")
                        return max(0, current_level - 3)  # Sai do jogo

    return 12  # Completou todas as 12 perguntas!


def main():
    print("=== Jogo de Conhecimento - Joker ===\n")
    player = input("Nome do jogador: ").strip() or "Jogador"

    questions = get_questions()
    if not questions:
        print("Sem perguntas disponiveis.")
        return

    level = play_game(questions)

    print("\n--- Fim do jogo ---")
    print(f"Parabens, {player}! Chegou ao nivel {level}/12")

    if level == 12:
        print("[VENCEU] Parabens! Completou todas as 12 perguntas!")
    elif level >= 8:
        print("Muito bem! Chegou perto do fim.")
    elif level >= 4:
        print("Bom esforço!")
    else:
        print("Pode fazer melhor na proxima!")


if __name__ == "__main__":
    main()
