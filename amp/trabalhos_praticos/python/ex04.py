import random


def main():
    """
    Escrever um algoritmo que pergunte ao utilizador para adivinhar um número gerado
    aleatoriamente, compreendido entre 1 e 100.

    - Existe um número máximo de tentativas para acertar no número.
    -Por cada tentativa do utilizador, o algoritmo indica se o número indicado é maior,
    menor ou igual ao número gerado.
    -O algoritmo termina quando o número indicado pelo utilizador for
    igual ao número gerado ou quando for atingido o número máximo de tentativas.
    -No primeiro caso, o algoritmo apresenta também o número de tentativas que
    foram necessárias para acertar no número gerado.
    """
    lives = 3
    num = random.randint(1, 100)

    while lives > 0:
        user_num = int(input("Indica um numero 1 a 100: "))
        if user_num == num:
            print("Certo! Muito bem.")
            break
        elif user_num < num:
            print("Numero indicado é menor que o numero correto.")
        else:
            print("Numero indicado é maior que o numero correto.")
        lives -= 1
        print(f"Ainda tens {lives} vidas.")

    if lives == 0:
        print("Perdeste! Gastaste todas as vidas.")


if __name__ == "__main__":
    main()
