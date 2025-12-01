import random


def ex03():
    """
    Multiplicacao Russa
    Algoritmo para a multiplicacao de dois numeros inteiros que implica
    apenas conhecer a tabuada do 2
    Algoritmo - multiplicacao de X por Y
    - Dividir (divisao inteira) sucessivamente X por 2 ate' chegar ao quociente 1
    - Simultaneamente, multiplicar Y sucessivamente por 2
    - Adicionar todos os valores de Y sempre que X e' impar

    exemplo: 39 x 79
        | X  | Y    |  par/impar |
        |----|------|------------|
        | 39 | 79   | X e' impar |
        | 19 | 158  | X e' impar |
        | 9  | 316  | X e' impar |
        | 4  | 632  |            |
        | 2  | 1264 |            |
        | 1  | 2528 | X e' impar |

    39 x 79 = 79 + 158 + 316 + 2528 = 3081
    """
    x = [int(input("Digite um número: "))]
    y = [int(input("Digite outro número: "))]

    resultado = 0
    i = 0

    print(" x | y ")

    while x[-1] != 1:
        if i != 0:
            temp_num1: int = int(x[i - 1] / 2)
            temp_num2: int = int(y[i - 1] + y[i - 1])
            x.append(temp_num1)
            y.append(temp_num2)

        if (int(x[i]) % 2) != 0:
            resultado += y[i]

        print(f" {x[i]} | {y[i]} ")
        i += 1

    print(f"O resultado é {resultado}")


def ex04():
    """
    Uma loja vende os seus produtos por um preço máximo de 2€.
    Todos os clientes pagam com moedas de 2€.
    Escreva um algoritmo que dado o preço de um produto, calcule o troco
    respectivo minimizando o número de moedas a entregar ao cliente
    (existem disponíveis moedas de 2€, 1€, 50c, 20c, 10c, 5c, 2c e 1c).
    O algoritmo deve ser feito de maneira que seja fácil acrescentar
    novas moedas, alterar o seu valor ou alterar o preço máximo.
    """

    dict = {
        "2e": ["2 euros", 2.00],
        "1e": ["1 euro", 1.00],
        "50c": ["50 centavos", 0.50],
        "25c": ["25 centimos", 0.25],
        "10c": ["10 centimos", 0.10],
        "5c": ["5 centimos", 0.05],
    }

    pagar = float(input("Digite o valor a ser pago: "))
    dado = float(input("Digite o valor pago: "))

    if dado < pagar:
        print("Valor insuficiente")
    else:
        troco = dado - pagar

        moedas = {}
        for moeda, info in dict.items():
            valor = info[1]
            quantidade = int(troco // valor)
            moedas[moeda] = quantidade
            troco -= quantidade * valor

        print("Troco:")
        for moeda, quantidade in moedas.items():
            print(f"{quantidade} moedas de {dict[moeda][0]}")


def ex05():
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
