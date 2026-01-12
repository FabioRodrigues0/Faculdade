def print_soma_menor(soma, menor):
    if soma <= -50:
        print("O menor numero lido foi: ", menor)
    else:
        print("A soma dos números lidos foi: ", soma)


def main():
    soma = 0
    menor = 0

    while soma > -50:
        n = int(input("Digite um número inteiro: "))

        if n < 0:
            soma += n

        if n < menor:
            menor = n

    print_soma_menor(soma, menor)


if __name__ == "__main__":
    main()
