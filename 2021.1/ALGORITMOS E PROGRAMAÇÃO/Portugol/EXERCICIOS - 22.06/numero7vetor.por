programa
{
	
	funcao inicio()
	{
		real k[10], soma=0.0
		inteiro qtdNegativo = 0
		para(inteiro x = 0; x < 10; x++){
			escreva("\nInforme o ",x+1, "° valor: ")
			leia(k[x])
			se(k[x] < 0){
				qtdNegativo++
			}senao{
				soma+=k[x]
			}
		}
		limpa()
		escreva("\nA qtd de n° negativos: ", qtdNegativo)
		escreva("\nA soma dos positivos: ", soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 355; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */