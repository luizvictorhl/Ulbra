programa
{
	
	funcao inicio()
	{
		inteiro quant[10], i, total_quant=0, venda_alta=0, pos_alto=0
		real preco[10], total_vendas=0

		para(i=0; i<3; i++){
			escreva("Digite o preço do objeto " ,i, " R$")
			leia(preco[i])
			escreva("Quantidade comprada: ")
			leia(quant[i])

		
			total_vendas+=quant[i]*preco[i]

			se(i==0){
				venda_alta=preco[i]
				pos_alto=i
			}senao se(venda_alta < quant [i]){
				venda_alta = quant[i]
				pos_alto = 1
			}
		}

		para(i=0; i<3; i++){
			escreva("\nProduto" ,i,"I Preço: ",preco[i], " I Qt: ",quant[i], " I TOTAL " ,preco[i]*quant[i])
		}

		escreva("\nTotal a ser pago: " ,total_vendas)
		escreva("\nComissão R$ " ,total_vendas*0.05)
		escreva("\nO produto mais comprado foi: " ,pos_alto," .Foi comprado " ,venda_alta, " vezes")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 774; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */