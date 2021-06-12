programa
{
	
	funcao inicio()
	{
		inteiro numeros[9], i, cont=0

		para(i=0; i<9; i++){
			escreva("digite um número: \n")
			leia(numeros[i])
		}

		para(i=0; i<9; i++){
			cont=0
			
	
			para(inteiro j = 1; j<=numeros[i]; j++){
				se(numeros[i] % j == 0){
					cont++
				
				}
			}

			se(cont==2){
				escreva("o número é primo")
				escreva(numeros[i],"\n")
				escreva("a posição é" ,i "\n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 399; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */