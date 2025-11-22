programa {
  funcao inicio() {
    real peso, peso_new
    inteiro planeta
    logico controlo = verdadeiro

    enquanto (controlo)   
    {  
      escreva("Indique seu peso: ")
      leia(peso) 
      
      se(peso>0)
        controlo = falso
      senao
        controlo = verdadeiro
    }

    se(peso<50)
      escreva("Astronauta não pode viajar.")
    senao
    {
      escreva("Indique que planeta ira visitar: ")
      leia(planeta)

      escolha(planeta)
      {
        caso 1:
          peso_new = peso * 0.38
        pare
        caso 2:
          peso_new = peso * 0.90
        pare
        caso 4:
          peso_new = peso * 0.39
        pare
        caso 5:
          peso_new = peso * 2.64
        pare
        caso 6:
          peso_new = peso * 1.14
        pare
        caso contrario:
          escreva("Planera indicado não esta presente na lista a visitar")
        pare
      }

      se(peso_new>90)
        escreva("Deverá levar um fato reforçado, boa viagem!")
      senao
        escreva("Boa viagem!")
    }
  }
}
