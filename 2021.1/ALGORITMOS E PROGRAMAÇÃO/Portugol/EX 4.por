programa {
	funcao inicio() {
		inteiro idade
		inteiro somaDasIdades=0
		inteiro contador=0
		inteiro media
		
		faca{
		    escreva("Digite sua idade:")
		    leia(idade)
		    contador++
		    somaDasIdades=somaDasIdades+idade
		    media=somaDasIdades/contador
		}
		enquanto((media<20) e (contador<10))
		
		escreva("\nA média das idades é:", media)
		
		
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 0; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */