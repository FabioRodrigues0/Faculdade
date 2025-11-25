programa
{
	
	cadeia planetas[] = {"Mercurio", "Venus", "Marte", "Terra", "Jupiter", "Saturno", "Urano", "Nepturno", "Plutão"}

	funcao menu(real diametros[])
	{
		para(inteiro i = 0; i < 9; i++)
		{
			escreva(planetas[i], " : ", diametros[i], "\n")
		}
	}

	funcao real mediaDiametros(real diametros[])
	{
		real media, soma = 0.00
		
		para(inteiro i = 0; i < 9; i++)
		{
			soma += diametros[i]
		}

		media = soma/9

		retorne media
	}

	funcao escreverResultado(real media, real diametros[]){
		inteiro indexPlaneta = 0
		real menor = 999999999.00

		escreva("Planetas com diametro a cima de media\n\n")
		
		para(inteiro i = 0; i < 9; i++)
		{
			se(diametros[i]>media)
				escreva(planetas[i], " : ", diametros[i], "\n")

			se(diametros[i]<menor)
				menor = diametros[i]
				indexPlaneta = i
		}

		escreva("O planeta com menor dimenção é:\n", planetas[indexPlaneta], " : ", menor)

	}
	
	funcao inicio()
	{
		real diametrosPlanetas[] = { 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00}
		real diametroInput, media
		cadeia opcao = ""
		
		para(inteiro i = 0; i<9; i++){
			faca{
				// procedimento
				menu(diametrosPlanetas)
				escreva("\n\n\n")

				escreva("Indique diametro de ", planetas[i], " : ")
				leia(diametroInput)
					
			} enquanto(diametroInput<0)

			diametrosPlanetas[i] = diametroInput
			
			limpa()
		}
		// funçao
		media = mediaDiametros(diametrosPlanetas)
		// procedimento
		escreverResultado(media, diametrosPlanetas)

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 883; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */