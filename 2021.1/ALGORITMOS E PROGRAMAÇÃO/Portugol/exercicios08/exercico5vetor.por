programa
{
	
	funcao inicio()
	{
		inteiro vetor_x[10] = {3,8,4,2,1,6,8,7,11,9}
		inteiro vetor_y[10] = {2,1,5,12,3,0,1,4,5,6}
		inteiro vetor_uniao[20]
		inteiro i, indice=0, posicao=0
		logico repetiu

		para(i=0; i <10; i++){
			repetiu=falso
			posicao=0

			enquanto(nao repetiu e posicao <= indice){
				se(vetor_uniao[posicao] !=vetor_x[i]){
					posicao++
				}senao{
					repetiu=verdadeiro
					
					
				}
			}
			se(repetiu){
				vetor_uniao[indice] = vetor_x[i]
				indice++
				
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 291; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */