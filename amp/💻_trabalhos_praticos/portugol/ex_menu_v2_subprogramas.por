programa {
  inclua biblioteca Matematica --> mat

  funcao inteiro areaRetangulo(inteiro altura, inteiro base){
    retorne base*altura
  }

  funcao real areaTriangulo(inteiro base, inteiro altura){
    retorne (base*altura)/2
  }

  funcao real areaCirculo(inteiro raio){
    retorne mat.square((mat.PI*raio), 2)
  }

  funcao inicio() {
    inteiro opcao, num1, num2, num3, resultado
    
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

              resultado = areaRetangulo(num1, num2)

              escreva("Resultado: ", resultado, "\n") 
          pare  
        
          caso 2:  
              escreva("Indique a base do triangulo:")
              leia(num1)
              escreva("Indique a altura do triangulo:")
              leia(num2)

              resultado = areaTriangulo(num1, num2)

              escreva("Resultado: ", resultado, "\n") 
          pare  
            
          caso 3:  
              escreva("Indique a raio do ciculo:")
              leia(num1)

              resultado = areaCirculo(num1)

              escreva("Resultado: ", resultado, "\n") 
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
