programa
{
	inclua biblioteca Util
	cadeia diasSemana[] = {"Domigo", "Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sabado"}
	
	funcao real checkInput(inteiro i){
		real submissao
		
		faca
		{	
			escreva("Informe o valor da temperatura no/a ", diasSemana[i], ": ")
			leia(submissao)

		}enquanto(submissao<-60 ou submissao>60)

		retorne submissao
	}

	funcao mediaTemp(real temp[])
	{
		real soma = 0.00, media
		
		para(inteiro i=0; i<7; i++)
		{
			soma+=temp[i]
		}

		media = soma/Util.numero_elementos(temp)

		escreva("\n")

		para(inteiro i=0; i<7; i++)
		{
			se (media<temp[i])
				escreva(diasSemana[i], " : ", temp[i], "\n")
		}
	}
	
	funcao inicio()
	{
		real temperaturas[7]
		
		para(inteiro i=0; i < 7; i++)
		{
			temperaturas[i] = checkInput(i)
		}
		
		mediaTemp(temperaturas)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 419; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */