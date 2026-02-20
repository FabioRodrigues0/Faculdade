# Lista de exercícios deste dia
exercicios = {}


def ex_2_05():
    """
    Tento uma temperatura expressa em graus,
    escreva a sua classificação seguindo a tabela:

    | Temperatura   | Classificação  |
    |     > 5       | Muito Frio     |
    |   [5, 10[     | Frio           |
    |   [10, 20[    | Ameno          |
    |   [20, 30[    | Quente         |
    |   >= 30       | Muito Quente   |
    """
    temp = float(input("Indique a temperatura: "))

    if temp < 5:
        print("Muito Frio")
    elif temp >= 5 and temp < 10:
        print("Frio")
    elif temp >= 10 and temp < 20:
        print("Ameno")
    elif temp >= 20 and temp < 30:
        print("Quente")
    elif temp >= 30:
        print("Muito Quente")


def ex_2_09():
    """
    O Governo Portugues pretende automatizar  o calculo do Imposto Automovel.
    que incide sobre os veiculos automoveis novos.
    A tabela em vigor é:

    | Taxas por CM³(euros)   | Escalão em cilindrada(cm³) | Parcelas a abater (euros)   |
    |         3.74           |       Até 1250             |     2417.56                 |
    |         8.86           |       Mais de 1250         |     8813.22                 |
    """
    nome = input("Qual é o seu nome: ")
    marca = input("Qual é a marca do seu carro: ")
    modelo = input("Qual é o modelo do carro: ")
    cc = int(input("Qual é cilindrada do motor? "))

    taxa = 3.74 if cc <= 1250 else 8.86
    parcelas = 2417.56 if cc <= 1250 else 8813.22

    ia = taxa * cc - parcelas

    print(f"IA={round(ia, 2)}")


# Registar exercícios na lista
exercicios["ex_2_05"] = ex_2_05
exercicios["ex_2_09"] = ex_2_09
