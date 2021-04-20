programa
{
	
	funcao inicio()
	{
		inteiro i, a, max, meio, min
		real b, c
		
		max = 0
		meio = 0
		min = 0
	
		escreva("Digite o valor A: ")
		leia(a)
		escreva("Digite o valor B: ")
		leia(b)
		escreva("Digite o valor C: ")
		leia(c)
		
		se(a >= b e a >= c){
		    max = a
		    se (b >= c){
		        meio = b
		        min = c
		   }senao{
		       meio = c
		       min = b
		   }
		}senao se(b >= a e b >= c){
		    max = b
		    se(a >= c){
		        meio = a
		        min = c
		    }senao{
		        meio = c
		        min = a
		    }
		}senao se(c >= a e c >= b){
		    max = c
		    se( a >= b){
		        meio = a
		        min = b
		    }senao{
		        meio = b
		        min = a
		    }
		        
		}
		
		escreva("Escreva sua escolha: 1 -> Crescente. 2 -> Decrescente. 3 -> Maior no meio.\n")
		leia(i)
		
		se(i == 1){
		    escreva("Ordem crescente ",min,",",meio,",",max)
		
		}senao se(i == 2){
		    escreva("Ordem decrescente ",max,",",meio,",",min)
		}senao se(i == 3){
		    escreva("Maior no meio ",meio,",",max,",",min)
		}senao{
		    escreva("Opção Inválida!")
		}
		
	    }
}
		
