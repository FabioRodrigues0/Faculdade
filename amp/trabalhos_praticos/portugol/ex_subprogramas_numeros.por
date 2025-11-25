programa {
  inclua biblioteca Texto
  inclua biblioteca Matematica

  funcao inteiro countNum(inteiro num){
    inteiro count = 0, temp = num
    //retorne Texto.numero_caracteres(num)
    enquanto(nao temp == 0){
      temp = temp/10
      count++
    }
    retorne count
  }

  funcao inteiro invertNum(inteiro num, inteiro qnt){
    //cadeia temp = ""
    //para (inteiro i = Texto.numero_caracteres(num)-1; i >= 0; i--)  
    //{  
    //     temp = temp + Texto.obter_caracter(num, i)
    //}
    //retorne temp
    inteiro tempFinal = 0, tempDiv=num, invertido, tempResto

    enquanto(qnt > 0){
      tempResto = tempDiv%10
      tempDiv = tempDiv/10

      tempFinal = tempFinal + tempResto*Matematica.potencia(10, qnt)
      qnt--
    }
    retorne tempFinal/10
  }

  funcao logico checkCap(inteiro num, inteiro qnt){
    inteiro temp
    temp = invertNum(num, qnt)
    retorne (num == temp)
  }

  funcao inicio() {
    cadeia invertido
    inteiro qnt_num, num
    logico capicua

    escreva("Indique um Numero: ")
    leia(num)

    qnt_num = countNum(num)

    escreva("Numero indicado tem: ", countNum(num), " algarismos\n")
    escreva("O numero indicado invertido é: ", invertNum(num, qnt_num), "\n")

    capicua = checkCap(num, qnt_num)

    se(capicua)
      escreva("Numero é uma capicua")
    senao
      escreva("Numero não e uma capicua")

  }
}
