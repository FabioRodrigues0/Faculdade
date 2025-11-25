programa {
  funcao inicio() {
    inteiro a, b, c
    
    escreva("Indique o primeiro lado do triangulo: ")
    leia(a)

    escreva("Indique o segundo lado do triangulo: ")
    leia(b)

    escreva("Indique o terceiro lado do triagulo: ")
    leia(c)

    se(a<(b+c) e b<(a+c) e c<(a+b)){
      escreva("É um triangulo")
    }
    senao{
      escreva("Numeros indicados nao correspondem ao de um triangulo")
    }
  }
}
