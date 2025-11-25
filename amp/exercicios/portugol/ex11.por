programa {
  funcao inicio() {
    real nota_1, nota_2, nota_3, media
    cadeia nome, resultado

    escreva("Indique seu nome: ")
    leia(nome)

    escreva("Indique a sua nota a Matematica: ")
    leia(nota_1)

    escreva("Indique a sua nota a Portugues: ")
    leia(nota_2)

    escreva("Indique a sua nota a Ingles: ")
    leia(nota_3)

    media = (nota_1 + nota_2 + nota_3) / 3

    se(media<9.5)
      resultado = "Não"
    senao
      resultado = "Sim"

    escreva("\n\n\nNome: ", nome ,"\nMedia das notas: ", media,"\nAprovação: ", resultado)
  }
}
