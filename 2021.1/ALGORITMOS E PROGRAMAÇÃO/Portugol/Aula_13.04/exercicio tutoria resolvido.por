programa
{
	
	funcao inicio()
	{
		inteiro i, maior, meio, menor
		real a, b, c
		
		maior = 0
		meio = 0
		menor = 0
	
		escreva("Digite o valor A: ")
		leia(a)
		escreva("Digite o valor B: ")
		leia(b)
		escreva("Digite o valor C: ")
		leia(c)
		
		se(a >= b e a >= c){
		    maior = a
		    se (b >= c){
		        meio = b
		        menor = c
		   }senao{
		       meio = c
		       menor = b
		   }
		}senao se(b >= a e b >= c){
		    maior = b
		    se(a >= c){
		        meio = a
		        menor = c
		    }senao{
		        meio = c
		        menor = a
		    }
		}senao se(c >= a e c >= b){
		    maior = c
		    se( a >= b){
		        meio = a
		        menor = b
		    }senao{
		        meio = b
		        menor = a
		    }
		        
		}
		
		escreva("Escreva sua escolha: 1 -> Crescente. 2 -> Decrescente. 3 -> Maior no meio.\n")
		leia(i)
		
		se(i == 1){
		    escreva("Ordem crescente: ",menor,",",meio,",",maior)
		
		}senao se(i == 2){
		    escreva("Ordem decrescente: ",maior,",",meio,",",menor)
		    
		}senao se(i == 3){
		    escreva("Maior no meio: ",meio,",",maior,",",menor)
		   
		}senao{
		    escreva("Opção Inválida!")
		}
		
	    }
}
	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1070; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */