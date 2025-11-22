programa {
  inclua biblioteca Texto

  funcao inteiro countNum(cadeia num){
    retorne Texto.numero_caracteres(num)
  }

  funcao cadeia invertNum(cadeia num){
    cadeia temp = ""
    para (inteiro i = Texto.numero_caracteres(num)-1; i >= 0; i--)  
    {  
         temp = temp + Texto.obter_caracter(num, i)
    }
    retorne temp
  }

  funcao logico checkCap(cadeia num){
    cadeia temp
    temp = invertNum(num)
    retorne (num == temp)
  }
  funcao inicio() {
    cadeia num, invertido
    inteiro qnt_num
    logico capicua

    escreva("Indique um Numero: ")
    leia(num)

    qnt_num = countNum(num)

    escreva("Numero indicado tem: ", countNum(num), " algarismos\n")
    escreva("O numero indicado invertido é: ", invertNum(num), "\n")

    capicua = checkCap(num)

    se(capicua)
      escreva("Numero é uma capicua")
    senao
      escreva("Numero não e uma capicua")

  }
}
