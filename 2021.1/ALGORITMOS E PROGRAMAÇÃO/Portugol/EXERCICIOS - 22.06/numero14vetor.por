programa
{
	
	funcao inicio()
	{
		const inteiro size = 6
		cadeia aluno[size]
		real nota1[size]
		real nota2[size]
		real media[size]
		inteiro i
		real a=0.0, r=0.0, x=0.0
		real percentualAprovados=0.0, percentualReprovados=0.0, exame=0.0
		real mediaClasse=0.0, totalMedia=0.0

		para(i=0; i<size; i++){
			escreva("\n\nNome do aluno: ")
			leia(aluno[i])
			escreva("1ª Prova: ")
			leia(nota1[i])
			escreva("2ª Prova: ")
			leia(nota2[i])
			media[i] = (nota1[i] + nota2[i])/2
			escreva("Média: ", media[i])
			totalMedia += media[i]
				se(media[i] > 7){
					escreva("\nAPROVADO!")
					a++
				}
				se(media[i] < 7){
					escreva("\nREPROVADO.")
					r++
				}
				se(media[i] == 7){
					escreva("\nEXAME.")
					x++
				}
		}
		mediaClasse = (totalMedia/size)
		escreva("\n\nMÉDIA DA CLASSE: ", mediaClasse)
		
		percentualAprovados = (a/size)*100
		escreva("\nPERCENTUAL APROVADOS: ", percentualAprovados, "%")

		exame = (x/size)*100
		escreva("\nPERCENTUAL DE ALUNOS DE EXAME: ", exame, "%")
		
		percentualReprovados = (r/size)*100
		escreva("\nPERCENTUAL REPROVADOS: ", percentualReprovados, "%")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 57; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {media, 10, 7, 5}-{mediaClasse, 14, 7, 11}-{totalMedia, 14, 24, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */