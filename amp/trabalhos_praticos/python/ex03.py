def main():
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


if __name__ == "__main__":
    main()
