programa
{
	
	funcao inicio()
	{
		inteiro I
		real A, B, C
		
		escreva("Digite 1, 2 ou 3: ")
		leia(I)
		escreva("Digite o primeiro número: ")
		leia(A)
		escreva("Digite o segundo número que seja diferente: ")
		leia(B)
		escreva("Digite o terceiro número diferente: ")
		leia(C)
		se (A==B ou A==C ou B==C){
		escreva("ERRO,DIGITE NÚMEROS DIFERENTES")
		}
		se (I==1){
		se (A>B e B>C){
		escreva("A ordem crescente dos números é: ", C, B, A)
		}
		se (A>B e C>B){
		escreva("A ordem crescente dos números é: ", B, C, A)	
		}
		se (A<B e A>C){
		escreva("A ordem crescente dos números é: ", C, A, B)
		}
		se (A<B e A<C){
		escreva("A ordem crescente dos números é: ", A, C, B)
		}
		se (C>B e A<B){
		escreva("A ordem crescente dos números é: ", A, B, C)
		}
		se (C>B e B<A){
		escreva("A ordem crescente dos números é: ", B, A, C)
		}
		}	
		se (I==2){
		se (A>B e B>C){
		escreva("A ordem decrescente dos números é: ", C, B, A)
		}
		se (A>B e C>B){
		escreva("A ordem decrescente dos números é: ", A, C, B)	
		}
		se (A<B e A>C){
		escreva("A ordem decrescente dos números é: ", B, A, C)
		}
		se (A<B e A<C){
		escreva("A ordem decrescente dos números é: ", B, C, A)
		}
		se (C>B e A<B){
		escreva("A ordem decrescente dos números é: ", C, B, A)
		}
		se (C>B e B<A){
		escreva("A ordem decrescente dos números é: ", C, A, B)
		}
		}
		se (I==3){
		se (A>B e B>C){
		escreva("A ordem dos números é: ", B, A, C)
		}
		se (A>B e C>B){
		escreva("A ordem dos números é: ", C, A, B)	
		}
		se (B>A e C<A){
		escreva("A ordem dos números é: ", A, B, C)
		}
		se (A<B e C<A){
		escreva("A ordem dos números é: ", C, B, A)
		}
		se (C>B e A<B){
		escreva("A ordem dos números é: ", B, C, A)
		}
		se (C>B e B<A){
		escreva("A ordem dos números é: ", A, C, B)
		}	
		}		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 353; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */