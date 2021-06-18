programa
{
	
	funcao inicio()
	{
		inteiro num[7], i, c2=0, c3=0, outros=0

		para (i=0; i < 7; i++){
			escreva("Diga um número: ")
			leia(num[i])
			se (num[i]%2==0){
				c2++
			} senao 
			se (num[i]%3==0){
				c3++
			} senao {
				outros++
			}
		}
		escreva("\nOs números múltiplos de 2 são:")
		para (i=0; i < 7; i++){
			se (num[i]%2==0){
				escreva("\n",num[i])
			}
		}
		escreva("\nOs números múltiplos de 3 são:")
		para (i=0; i < 7; i++){
			se (num[i]%3==0){
				escreva("\n",num[i])
			}
		}
		escreva("\nOs números múltiplos de 2 e 3 são:")
		para (i=0; i < 7; i++){
			se(num[i]%2==0 e num[i]%3==0){
				escreva("\n",num[i])
			}
		}
		escreva("\nOs números que não são múltuplos nem de 2 nem de 3 são:")
		para (i=0; i < 7; i++){
			se (num[i]%3!=0 e num[i]%2!=0){
				escreva("\n",num[i])
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 824; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */