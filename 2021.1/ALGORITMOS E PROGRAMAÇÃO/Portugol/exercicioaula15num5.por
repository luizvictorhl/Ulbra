programa
{
	
//Uma escola deseja saber se existem alunos cursando, simultaneamente, as disciplinas Lógica e Linguagem de
	//Programação. Coloque os números das matrículas dos alunos que cursam Lógica em um vetor, quinze alunos.
	//Coloque os números das matrículas dos alunos que cursam Linguagem de Programação em outro vetor, dez
	//alunos. Mostre o número das matrículas que aparecem nos dois vetores.
	
	funcao inicio()
	{
		const inteiro tamLO=15
		const inteiro tamLP=10
		inteiro logica[tamLO], progra[tamLP], qtd=0, i
		
		
		para (i=0; i < tamLO; i++){
			escreva("Digite o número de matricula do aluno de lógica de programação: \n")
			leia(logica[i])
		
		}
		para (i=0; i < tamLP; i++){
			escreva("Digite o número de matricula do aluno de linguagem de programação: \n")
			leia(progra[i])
			
		}
		para(i=0; i < tamLO; i++){
			para(inteiro j=0; j < tamLP; j++){
				se(logica[i]==progra[j]){
					escreva("\n",logica[i])
					qtd++		
				}
			}
		}
		escreva("\nTotal de alunos nas duas: "+qtd)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 869; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */