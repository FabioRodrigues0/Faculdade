programa {
  inclua biblioteca Util

  funcao inicio() {
    inteiro num_rand, num_user, i, tentativas = 3

    num_rand = Util.sorteia(1, 100)

    faca{
      para(i=1; i<=tentativas; i++)
        escreva("♥")
      escreva("\n\n")
      escreva("Indique um numero de 1 a 100:")
      leia(num_user)

      se(num_user == num_rand){
        escreva("Parabens acertou")
      } senao {
        se(num_user < num_rand)
          escreva("Numero que indicou e menor do que o sorteado\n")
        senao
          escreva("Numero que indicou e maior do que o sorteado\n")
        tentativas = tentativas - 1
        Util.aguarde(2040) 
        limpa()
      }

    }enquanto(tentativas>0)    
  }
}
