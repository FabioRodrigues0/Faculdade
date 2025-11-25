programa {
  inclua biblioteca Matematica --> mat

  funcao inicio() {
    inteiro opcao, num1, num2, num3
    
    faca{
      escreva("-------------Menu--------------\n")
      escreva("1 - Area do retângulo\n")
      escreva("2 - Area do tringulo\n")
      escreva("3 - Area do círculo\n")
      escreva("4 - Sair\n")
      leia(opcao)

      escolha(opcao)  
      {  
          caso 1:  
              escreva("Indique a base do retangulo:")
              leia(num1)
              escreva("Indique a altura do retangulo:")
              leia(num2)

              escreva("Resultado: ", num1*num2, "\n") 
          pare  
        
          caso 2:  
              escreva("Indique a base do triangulo:")
              leia(num1)
              escreva("Indique a altura do triangulo:")
              leia(num2)

              escreva("Resultado: ", (num1*num2)/2, "\n") 
          pare  
            
          caso 3:  
              escreva("Indique a raio do ciculo:")
              leia(num1)

              escreva("Resultado: ", mat.square((mat.PI*num1), 2), "\n") 
          pare

          caso 4:  
              escreva("Volte sempre")
          pare    
            
          caso contrario:  
              escreva("Opção errada. Volta a tentar")
      }  

    }enquanto(nao(opcao == 4))
  }
}
