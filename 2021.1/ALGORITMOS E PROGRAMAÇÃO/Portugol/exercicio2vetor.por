programa
{
	
	funcao inicio()
	{
		inteiro quantidades[10], i, totalpecas = 0, maisvendido = 0
		real precos[10], total[10], totalcompra=0

		para(i=0; i<10; i++){
			escreva("Digite a quantidade de peças vendidas: ")
			leia(quantidades[i])
			escreva("Digite o preço das peças vendidas: ")
			leia(precos[i])
			total[i] = precos[i] * quantidades[i]
			totalcompra += total[i]
			totalpecas += quantidades[i]
		}
		 para(i=0; i<10; i++){
		 	se(quantidades[maisvendido] < quantidades[i]){
		 		maisvendido = i
		 	}
		 }

		 escreva("A quantidade mais vendida é: ",maisvendido, " ",precos[maisvendido])
		 escreva("o total da compra foi: ",totalcompra)

		 para(i=0; i<10; i++){
		 	escreva("\n o valor unitário é: ",precos[i])
		 	escreva("O total de cada peça é: ",total[i])
		 	
		 }
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 734; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */