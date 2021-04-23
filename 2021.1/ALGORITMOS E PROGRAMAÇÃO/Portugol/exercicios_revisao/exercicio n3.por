programa {
	funcao inicio() {
		inteiro numero
		
		escreva("Escreva um número\n")
		leia(numero)
		    se (numero % 2 == 0){
		        escreva("\nO número ",numero, " é par!")
		    }
		    senao{
		        escreva("\nO número ",numero, "é impar!")
		    }
		    se(numero>0){
		        escreva("\nO número ",numero, " é positivo!")
		    }
		    se(numero<0){
		        escreva("\nO número ",numero, "é negativo!")
		    }
		    se(numero==0){
		        escreva("\nO número ",numero, "é nulo!")
		    }
		
	}
}
