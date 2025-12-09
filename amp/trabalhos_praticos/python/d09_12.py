# Lista de exercícios deste dia
from string import printable


exercicios = {}

def exercicio_1():
    """
    Cria um dicionário com os quadrados dos números de 1 a 16.
    """
    list_num = {i: i**2 for i in range(1, 17)}
    print(list_num)

def exercicio_2():
    """
    Escrever o numero de dias de um mes a partir do nome do mes.
    """
    meses = {
        'Janeiro': 31,
        'Fevereiro': 28,
        'Março': 31,
        'Abril': 30,
        'Maio': 31,
        'Junho': 30,
        'Julho': 31,
        'Agosto': 31,
        'Setembro': 30,
        'Outubro': 31,
        'Novembro': 30,
        'Dezembro': 31
    }
    mes = input("Digite o nome do mês: ").capitalize()
    
    print(f"{mes} tem {meses.get(mes, 'Mês inválido')} dias.")

def exercicio_3():
    """
    Criar um dicionario a partir de duas listas
    exemplo:
        list1: keys
        list2: values
    """
    lista1 = ['a', 'b', 'c']
    lista2 = [1, 2, 3]
    
    print(dict(zip(lista1, lista2)))

def exercicio_4():
    """
    Contar as ocorrências de vogais existentes numa string,guardando os resultados num dicionário
    exemplo:
        dicionario - vogal: numero_de_ocorrencias
    """
    frase = input("Digite uma frase: ").lower()
    vogais = 'aeiou'
    contador = {vogal: frase.count(vogal) for vogal in vogais}
    
    print(contador)

exercicios['exercicio_1'] = exercicio_1
exercicios['exercicio_2'] = exercicio_2
exercicios['exercicio_3'] = exercicio_3
exercicios['exercicio_4'] = exercicio_4