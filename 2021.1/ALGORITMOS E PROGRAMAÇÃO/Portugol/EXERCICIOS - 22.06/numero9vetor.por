programa
{
	
	funcao inicio()
	{
		const inteiro tam=4
		cadeia produtosNome[tam]
		inteiro produtosCodigo[tam]
		real produtosPreco[tam]

		para(inteiro i=0; i<tam; i++){
			escreva("\n Digite nome do produto: ")
			leia(produtosNome[i])
			escreva("\n Digite o código do produto: ")
			leia(produtosCodigo[i])
			escreva("\n Digite o preço do produto: ")
			leia(produtosPreco[i])
			}
		
		para(inteiro i=0; i<tam; i++){
			escreva("\n Nome do produto: "+ produtosNome[i])
			escreva("\n O código do produto: "+ produtosCodigo[i])
			escreva("\n O preço do produto: "+ produtosPreco[i])
			
			se(produtosCodigo[i]%2==0 e produtosPreco[i]>1000){
				escreva("\n Novo valor do produto: "+ produtosPreco[i]*1.20)
			}
			senao se(produtosCodigo[i]%2==0){
					escreva("\n Novo valor do produto: "+ produtosPreco[i]*1.15)
				}
			senao se(produtosPreco[i]>1000){
					escreva("\n Novo valor do produto: "+ produtosPreco[i]*1.10)
				}
			senao{
				escreva("\n Este produto não sofre alteração!")
				}
			
			escreva("\n--------------------------------------------------")
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 967; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */