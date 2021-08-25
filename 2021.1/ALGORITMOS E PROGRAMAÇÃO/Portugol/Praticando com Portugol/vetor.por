programa
{
	
	funcao inicio() {
	//leia o nome de 10 alunos e mostre toddos eles e mostrar de forma de tras pra frente.

		cadeia nomes[10]
		inteiro teste[]={4,5,6,7,8,9,10}
		inteiro qtd=0

		/*nomes[5]="ramon"
		escreva("\n"+nomes [0])
		escreva("\n"+nomes [1])
		escreva("\n"+nomes [5])
	*/
		para(inteiro i=0; i<=9; i++){
			escreva("Digite o nome:\n",i)
			leia(nomes[i])
			qtd++
		}
		para(inteiro f=9; f >=0; f--){
			escreva(nomes[f])
			escreva("\n")
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 382; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */