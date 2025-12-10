# from rich import print


def main():
    lista_perguntar = [
        {
            "pergunta": "Qual é o nome do jogo?",
            "respostas": ["1", "2", "3", "4"],
            "resposta_certa": "1",
            "dificuldade": "1",
        },
        {
            "pergunta": "Qual é a idade mínima para jogar?",
            "respostas": ["1", "2", "3", "4"],
            "resposta_certa": "1",
            "dificuldade": "2",
        },
        {
            "pergunta": "Qual é o nome do jogo?",
            "respostas": ["1", "2", "3", "4"],
            "resposta_certa": "1",
            "dificuldade": "1",
        },
        {
            "pergunta": "Qual é o nome do jogo?",
            "respostas": ["1", "2", "3", "4"],
            "resposta_certa": "1",
            "dificuldade": "1",
        },
        {
            "pergunta": "Qual é a idade mínima para jogar?",
            "respostas": ["1", "2", "3", "4"],
            "resposta_certa": "1",
            "dificuldade": "2",
        },
        {
            "pergunta": "Qual é o nome do jogo?",
            "respostas": ["1", "2", "3", "4"],
            "resposta_certa": "1",
            "dificuldade": "1",
        },
        {
            "pergunta": "Qual é o nome do jogo?",
            "respostas": ["1", "2", "3", "4"],
            "resposta_certa": "1",
            "dificuldade": "1",
        },
        {
            "pergunta": "Qual é o nome do jogo?",
            "respostas": ["1", "2", "3", "4"],
            "resposta_certa": "1",
            "dificuldade": "1",
        },
        {
            "pergunta": "Qual é a idade mínima para jogar?",
            "respostas": ["1", "2", "3", "4"],
            "resposta_certa": "1",
            "dificuldade": "1",
        },
        {
            "pergunta": "Qual é o nome do jogo?",
            "respostas": ["1", "2", "3", "4"],
            "resposta_certa": "1",
            "dificuldade": "1",
        },
        {
            "pergunta": "Qual é o nome do jogo?",
            "resposta": ["1", "2", "3"],
            "dificuldade": "1",
        },
        {
            "pergunta": "Qual é a idade mínima para jogar?",
            "respostas": ["1", "2", "3", "4"],
            "resposta_certa": "1",
            "dificuldade": "1",
        },
        {
            "pergunta": "Qual é o nome do jogo?",
            "resposta": ["1", "2", "3"],
            "dificuldade": "1",
        },
        {
            "pergunta": "Qual é o nome do jogo?",
            "respostas": ["1", "2", "3", "4"],
            "resposta_certa": "1",
            "dificuldade": "1",
        },
        {
            "pergunta": "Qual é a idade mínima para jogar?",
            "respostas": ["1", "2", "3", "4"],
            "resposta_certa": "1",
            "dificuldade": "1",
        },
        {
            "pergunta": "Qual é o nome do jogo?",
            "respostas": ["1", "2", "3", "4"],
            "resposta_certa": "1",
            "dificuldade": "1",
        },
        {
            "pergunta": "Qual é o nome do jogo?",
            "respostas": ["1", "2", "3", "4"],
            "resposta_certa": "1",
            "dificuldade": "1",
        },
    ]
    
    print("*"*10+"Bem-vindo ao jogo!"+ "*"*10)
    
    for i in range(1, len(lista_perguntar)+1):
        print(f"Pergunta {i}: {lista_perguntar[i-1]['pergunta']}")
        print("Respostas:")
        for j, resposta in enumerate(lista_perguntar[i-1]['respostas']):
            print(f"{j+1}. {resposta}")
        resposta_usuario = input("Qual é a resposta correta: ")
        if resposta_usuario == lista_perguntar[i-1]['resposta_certa']:
            print("Resposta correta!")
        else:
            print("Resposta incorreta!")
            break

if __name__ == "__main__":
    main()
