programa
{
	
	funcao inicio()
	{
		const inteiro size=5
		inteiro valor[size], i

		para(i=0; i < size; i++){
			escreva("Digite um valor inteiro: ")
			leia(valor[i])
		}
		escreva("\n A ordem inversa dos valores é: ")

		para(i=0; i< size; i++){
			escreva("\n"+valor[(size-1)-i])
	
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 280; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */