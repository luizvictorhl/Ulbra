programa
{
	
	funcao inicio()
	{
		const inteiro tam=7
		cadeia nomes[tam]
		inteiro iMaior=0, i=0
		real media[tam], vMaior=0, nMinima

		para(i=0; i <tam; i++){
			escreva("Informe o nome do aluno ", i+1,"\n")
			leia(nomes[i])
		}
		para(i=0; i<tam; i++){
			escreva("Informe a média do aluno\n", i+1,":",nomes[i],":")
			leia(media[i])

			se(media[i]>vMaior){
				vMaior=media[i]
				iMaior=i+1
			}
		}
			escreva("\nA maior média é ", vMaior, " do aluno ", nomes[iMaior],"\n")

			para(i=0; i<tam; i++){
				se(media[i]<7){
					nMinima=25-(media[i]*4)
					se(nMinima>10){
						escreva("\nO aluno ",nomes[i]," reprovado\n")
					}senao{
						escreva("O aluno ",nomes[i]," precisa de de ",nMinima, " para ser aprovado\n")
					}
				}
			}
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 551; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */