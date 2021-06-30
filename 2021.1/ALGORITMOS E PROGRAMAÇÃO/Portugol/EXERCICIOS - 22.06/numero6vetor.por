programa
{
	
	funcao inicio()
	{
		const inteiro tam=10
		real totalVendas[tam]
		real percentual[tam]
		cadeia vendedores[tam]
		real totalDasVendas=0
		inteiro menor=0
		inteiro maior=0
		

		para(inteiro i=0; i<tam; i++){
			escreva("\n Digite nome: ")
			leia(vendedores[i])
			escreva("\n Digite valor total de venda:")
			leia(totalVendas[i])
			totalDasVendas=totalVendas[i]+totalDasVendas
			escreva("\n Digite a comisssão: ")
			leia(percentual[i])

			se(percentual[menor]>percentual[i]){
				menor=i
			}
			se(percentual[maior]<percentual[i]){
				maior=i
			}
		}

		para(inteiro i=0; i<tam; i++){
			escreva("\nO vendedor", vendedores[i], "Deve receber comissão de ",percentual[i], "\n")
		}
			escreva("\nTotal das vendas: "+totalDasVendas)
			escreva("\n O vendedor com maior valor a receber é: "+vendedores[maior])
			escreva("\n O Valor é: "+percentual[maior])

			escreva("\n O vendedor com menor valor a receber é: "+vendedores[menor])
			escreva("\n O Valor é: "+percentual[menor])
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 989; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */