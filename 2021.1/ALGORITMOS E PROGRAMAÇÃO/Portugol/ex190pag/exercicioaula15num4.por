programa
{
	//Faça um programa que preencha um vetor com quinze elementos inteiros e verifique a existência de elementos
	//iguais a 30, mostrando as posições em que apareceram.
	funcao inicio()
	{
		inteiro i, vetor[15], cont_vetor=0, posi_vet, contador=0

		para(i=0;i<15;i++){
			escreva("\nDigite um número: ",i+1, ":")
			leia(vetor[i])
			se(vetor[i]==30){
				cont_vetor+=1
			}
		}
			escreva("O número 30 aparece nas posições:")
			
			para(i=0;i<15;i++){
				se(vetor[i]==30){
					escreva("\n" ,i+1)
					contador++
				}
				
			}
			escreva("\nO número 30 apareceu " ,contador, " vezes")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 598; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */