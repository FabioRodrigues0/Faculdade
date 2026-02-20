programa {
  funcao inicio() {
    inteiro num, i

    faca{
      escreva("Insira um numero de 1 a 10 para apresentar a tabuada:")
      leia(num)

      se(num<=10 e num>=1)
        para(i=1; i<=10; i++){
          escreva(num, " x ", i, " = ", num*i, "\n")
        }
      senao{
        escreva("Numero invalido.\n")
      }
    }enquanto(nao (num<=10 e num>=1))
  }
}
