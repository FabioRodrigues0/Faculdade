from .d18_11 import ex_2_05, ex_2_09
from .d25_11 import ex03, ex04, ex05


def main() -> None:
    exercicios = {"ex02_05": ex_2_05, "ex02_09": ex_2_09, "ex03": ex03, "ex04": ex04, "ex05": ex05}

    while True:
        print("Escolha um exercício:")
        for i, exercicio in enumerate(exercicios.keys(), start=1):
            print(f"{i}. {exercicio}")
        print("0. Sair")

        escolha = input("Digite o número do exercício: ")

        if escolha == "0":
            break

        try:
            escolha = int(escolha)
            if escolha < 1 or escolha > len(exercicios):
                print("Escolha inválida.")
            else:
                exercicio = list(exercicios.keys())[escolha - 1]
                print(f"Executando exercício {exercicio}:")
                exercicios[exercicio]()
        except ValueError:
            print("Escolha inválida.")


if __name__ == "__main__":
    main()
