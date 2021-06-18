programa
{
	
	funcao inicio()
	{
		inteiro i, par=0, impar=0, numeros[6]

		para(i=0; i <6; i++){
			escreva("Digite um número: ")
			leia(numeros[i])

			se(numeros[i]%2==0){
				par++
			}senao{
				impar++
			}
			}
			escreva("\nTodos os números pares: ")
		para(i=0; i<6; i++){
			se(numeros[i]%2==0){
				escreva("\n",numeros[i])
			}
		}
			escreva("\nQuantidade de números par: ",par)
			escreva("\nTodos os números impares: ")
		para(i=0;i<6;i++){
			se(numeros[i]%2==1){
				escreva("\n",numeros[i])
			}
		}
			escreva("\nQuantidade de números ímpar: ",impar)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 482; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */