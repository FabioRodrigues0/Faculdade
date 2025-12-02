from d02_12 import exercicios as exercicios_d02_12
from d18_11 import exercicios as exercicios_d18_11
from d25_11 import exercicios as exercicios_d25_11


def main() -> None:
    # Organizar exercícios por dia
    dias = {
        "18/11": exercicios_d18_11,
        "25/11": exercicios_d25_11,
        "02/12": exercicios_d02_12,
    }

    while True:
        print("\n" + "=" * 40)
        print("Escolha um dia:")
        print("=" * 40)
        for i, dia in enumerate(dias.keys(), start=1):
            print(f"{i}. {dia}")
        print("0. Sair")
        print("=" * 40)

        escolha_dia = input("Digite o número do dia: ")

        if escolha_dia == "0":
            print("A sair...")
            break

        try:
            escolha_dia = int(escolha_dia)
            if escolha_dia < 1 or escolha_dia > len(dias):
                print("Escolha inválida.")
                continue

            dia_selecionado = list(dias.keys())[escolha_dia - 1]
            exercicios_dia = dias[dia_selecionado]

            while True:
                print("\n" + "=" * 40)
                print(f"Exercícios do dia {dia_selecionado}:")
                print("=" * 40)
                for i, exercicio in enumerate(exercicios_dia.keys(), start=1):
                    print(f"{i}. {exercicio}")
                print("0. Voltar ao menu de dias")
                print("=" * 40)

                escolha_ex = input("Digite o número do exercício: ")

                if escolha_ex == "0":
                    break

                try:
                    escolha_ex = int(escolha_ex)
                    if escolha_ex < 1 or escolha_ex > len(exercicios_dia):
                        print("Escolha inválida.")
                    else:
                        exercicio = list(exercicios_dia.keys())[escolha_ex - 1]
                        print("\n" + "=" * 40)
                        print(f"Executando exercício {exercicio}:")
                        print("=" * 40 + "\n")
                        exercicios_dia[exercicio]()
                        print("\n" + "=" * 40)
                        input("Pressione Enter para continuar...")
                except ValueError:
                    print("Escolha inválida.")

        except ValueError:
            print("Escolha inválida.")


if __name__ == "__main__":
    main()
