# Lista de exercícios deste dia
exercicios = {}


def ex_extra() -> None:
    """
    Exercício extra (com listas de números):
    Ler uma lista de números inteiros sendo o número de elementos a considerar definido previamente pelo utilizador.
    Somar os elementos da lista, apresentar a média respetiva (com precisão de duas casas decimais)
    e escrever os elementos acima da média e os maior e menor valores da lista.
    Usar funções para calcular a soma, calcular a média, encontrar o maior valor, encontrar o menor valor
    e escrever os elementos acima da média.
    """
    qnt_num = int(input("Indique quandos numeros ira fornecer: "))

    list_num = list()

    for i in range(0, qnt_num):
        list_num.append(float(input("Indique o numero que deseja adicionar: ")))

    total = 0

    for i in list_num:
        total += i

    media = total / qnt_num
    list_filter = filter(lambda x: x > media, list_num)

    print(f"Soma: {total}")
    print(f"Media: {media:.2f}")
    print(f"Numeros acima da media {list(list_filter)}")


def ex_01() -> None:
    """
    Exercício 1:
    Contar o número de ocorrências de um caracter numa string
    (usar uma docstring + executar na shell os comandos help() e print() para ver a docstring)
    """
    frase = input("Indique a frase onde querer contar as letras nela:\n")
    letra = input("Indque a letra que quer verificar: ")

    qnt = frase.count(letra)

    print(f"Na frase indicada aparece {qnt} a letra {letra}")


def ex_02() -> None:
    """
    Exercício 2:
    Indicar a primeira posição onde ocorre um caracter numa string
    """
    frase = input("Indique a frase:\n")
    letra = input("Indque a letra que quer verificar: ")

    pos = frase.find(letra)

    print(f"Na frase indicada primeira possiçao da letra {letra} e {pos}")


def ex_03() -> None:
    """
    Exercício 3:
    Contar o número de espaços existente numa string
    """
    frase = input("Indique a frase onde querer contar os espaços nela:\n")

    qnt = frase.split(" ")

    print(f"Na frase que indicou tem {0 if len(qnt) == 0 else len(qnt) - 1} espaços")


def ex_04() -> None:
    """
    Exercício 4:
    Remover espaços existentes numa string
    """
    frase = input("Indique a frase onde quer remover os espaços:\n")

    frase = frase.replace(" ", "")

    print(f"Frase sem espaços: {frase}")


def ex_05() -> None:
    """
    Exercício 5:
    Remover caracteres não alfabéticos existentes numa string
    """
    frase = input("Indique a frase:\n")
    frase_new = ""

    for letra in frase:
        if letra.isalpha():
            frase_new += letra

    print(f"Frase sem caracteres não alfabéticos: {frase_new}")


def ex_06() -> None:
    """
    Exercício 6:
    Escrever uma string considerando apenas os caracteres de ordem par (começa em 0)
    """
    frase = input("Indique a frase:\n")
    frase_new = ""

    for i, letra in enumerate(frase):
        if i % 2 == 0:
            frase_new += letra

    print(f"Frase formatada: {frase_new}")


def ex_07() -> None:
    """
    Exercício 7:
    Substituir numa string um caracter por outro
    """
    frase = input("Indique a frase:\n")
    char_old = input("Indique o caracter a substituir: ")
    char_new = input("Indique o novo caracter: ")

    frase_new = frase.replace(char_old, char_new)

    print(f"Frase alterada: {frase_new}")


def ex_08() -> None:
    """
    Exercício 8:
    Escrever os códigos ascii dos caracteres existentes numa string
    (usar função pre-definida – ord)
    """
    frase = input("Indique a frase:\n")
    frase_new = ""

    for i in frase:
        frase_new += f"{ord(i)} "

    print(f"Códigos ASCII: {frase_new}")


def ex_09() -> None:
    """
    Exercício 9:
    Contar o número de vogais de uma string
    """
    frase = input("Indique a frase:\n")

    qnt = list(filter(lambda x: x.lower() in "aeiou", frase))

    print(f"Na frase que deu tem {len(qnt)} vogais")


def ex_10() -> None:
    """
    Exercício 10:
    Verificar se uma string (palavra) é um palíndromo
    """
    frase = input("Indique a frase: \n")

    check = "sim" if frase == frase[::-1] else "nao"

    print(f"A frase {check} e um polindromo.")


# Registar exercícios na lista
exercicios["ex_extra"] = ex_extra
exercicios["ex_01"] = ex_01
exercicios["ex_02"] = ex_02
exercicios["ex_03"] = ex_03
exercicios["ex_04"] = ex_04
exercicios["ex_05"] = ex_05
exercicios["ex_06"] = ex_06
exercicios["ex_07"] = ex_07
exercicios["ex_08"] = ex_08
exercicios["ex_09"] = ex_09
exercicios["ex_10"] = ex_10
