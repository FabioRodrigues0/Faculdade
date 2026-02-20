programa {
  inclua biblioteca Matematica --> mat
  funcao inicio() {
    real altura, peso, imc

    escreva("Indique a sua altura: ")
    leia(altura)

    escreva("Indique o seu peso: ")
    leia(peso)
    
    imc = peso / mat.potencia(altura, 2.0)

    se(imc>=25)
    {
      se(imc>=30)
        escreva("Obeso")
      senao
        escreva("Peso exessivo")
    }
    senao
    {
      se(imc>=18.5)
        escreva("Normal")
      senao
        escreva("Magro")
    }
  }
}
