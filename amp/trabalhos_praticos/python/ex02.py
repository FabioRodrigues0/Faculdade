def main():
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


if __name__ == "__main__":
    main()
